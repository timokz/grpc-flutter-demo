import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:meetup_demo_server/protos/generated/generated.dart';
import 'package:meetup_demo_server/protos/static_pizza_data.dart';

export 'package:grpc/grpc.dart';

void main(List<String> arguments) async {
  final server = Server([
    PizzeriaService(),
  ]);
  // could also manually be set to 8080 or 8800
  const port = 5001;
  await server.serve(port: port);

  print('Server listening at localhost:$port');
  log('Server listening at localhost:$port');

  // on close shutdown the server
  ProcessSignal.sigint.watch().listen((_) async {
    print('Shutting down...');
    log('Shutting down...');
    await server.shutdown();
    print('Server shutdown');
    exit(0);
  });
}

class PizzeriaService extends PizzeriaServiceBase {
  final Map<String, StreamController<PizzaUpdate>> _subscribers = {};
  final StreamController<PizzaListResponse> _pizzaListController =
      StreamController<PizzaListResponse>.broadcast();

  late final List<Pizza> _pizzas = definedPizzas;

  @override
  Future<PizzaListResponse> listPizzas(
    ServiceCall call,
    OrderRequest request,
  ) async {
    log('listPizzas rpc called from server');
    print('broadcasting pizza list');
    return PizzaListResponse(pizzas: _pizzas);
  }

  @override
  Stream<PizzaUpdateResponse> subscribeToPizza(
    ServiceCall call,
    PizzaUpdateRequest request,
  ) async* {
    final pizzaId = request.id;

    // Create a new stream controller for this pizza if it doesn't exist yet
    if (!_subscribers.containsKey(pizzaId)) {
      _subscribers[pizzaId] = StreamController<PizzaUpdate>.broadcast();
    }

    // Add the client's stream to the subscribers list for this pizza
    final subscriber = _subscribers[pizzaId]!.sink;
    final stream = _subscribers[pizzaId]!.stream;

    // Send the current quantity of the pizza to the client
    final pizza = _pizzas.firstWhere((p) => p.id == pizzaId);
    final quantity = pizza.quantity;
    _createNewPizzaQuantity(pizzaId, quantity, pizza);
    yield PizzaUpdateResponse(pizza: pizza);

    // Listen for updates to the quantity of the pizza and send them to the client
    await for (final update in stream) {
      final pizza = _pizzas.firstWhere((p) => p.id == update.id);
      final quantity = pizza.quantity;
      yield PizzaUpdateResponse(pizza: pizza);
    }

    // Remove the client's stream from the subscribers list for thispizza when it disconnects
    await subscriber.close();
    _subscribers.remove(pizzaId);
  }

  Pizza _createNewPizzaQuantity(String pizzaId, int quantity, Pizza pizza) {
    return Pizza(
      id: pizzaId,
      quantity: quantity,
      name: pizza.name,
      price: pizza.price,
      description: pizza.description,
      vegetarian: pizza.vegetarian,
      imageURL: pizza.imageURL,
    );
  }

  @override
  Future<PizzaQuantityUpdateResponse> updatePizzaQuantity(
    ServiceCall call,
    PizzaQuantityUpdateRequest request,
  ) {
    print('updatePizzaQuantity rpc called');
    {
      final pizzaIndex = _pizzas.indexWhere((p) => p.id == request.pizzaId);
      if (pizzaIndex >= 0) {
        _pizzas[pizzaIndex].quantity = request.newQuantity;

        print('pizza quantity: ${_pizzas[pizzaIndex].quantity}');

        // Update the pizza quantity and broadcast the update
        updatePizzaQuantityAndBroadcast(request.pizzaId, request.newQuantity);
      }
      return Future.value(
        PizzaQuantityUpdateResponse(pizza: _pizzas[pizzaIndex]),
      );
    }
  }

  Future<void> updatePizzaQuantityAndBroadcast(
    String pizzaId,
    int newQuantity,
  ) async {
    final pizzaIndex = _pizzas.indexWhere((p) => p.id == pizzaId);
    if (pizzaIndex >= 0) {
      _pizzas[pizzaIndex].quantity = newQuantity;

      print('updatePizzaQuantity and broadcast rpc called');
      if (_subscribers.containsKey(pizzaId)) {
        final update = PizzaUpdate(id: pizzaId, quantity: newQuantity);
        _subscribers[pizzaId]!.add(update);
      }

      // Send updated pizza list to all connected clients
      final response = PizzaListResponse(pizzas: _pizzas);
      _pizzaListController.add(response);
    }
  }
}
