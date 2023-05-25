import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:meetup_demo_server/protos/generated.dart';
import 'package:models/models.dart' as models;

export 'package:grpc/grpc.dart';

void main(List<String> arguments) async {
  final server = Server([
    PizzeriaService(),
  ]);
  // could also manually be set to 8080 or 8800
  const port = 50051;
  await server.serve(port: port);

  print('Server listening at localhost:$port');
  log('Server listening at localhost:$port');

  // on close shutdown the server
  ProcessSignal.sigint.watch().listen((_) async {
    print('Shutting down...');
    log('Shutting down...');
    await server.shutdown();
    exit(0);
  });
}

class PizzeriaService extends PizzeriaServiceBase {
  final Map<String, StreamController<PizzaUpdate>> _subscribers = {};
  late final List<Pizza> _pizzas;

  Future<void> loadPizzas() async {
    final jsonString = await File('assets/sample_data.json').readAsString();
    final jsonData = jsonDecode(jsonString) as List<dynamic>;

    final pizzas = jsonData
        .map((e) => models.Pizza.fromJson(e as Map<String, dynamic>))
        .toList();

    final pizzaProtos = pizzas.map(
      (models.Pizza item) => Pizza(
        id: item.name,
        name: item.name,
        description: item.description,
        price: item.price,
        vegetarian: item.vegetarian,
        imageURL: item.imageURL,
      ),
    );

    _pizzas = pizzaProtos.toList();
  }

  @override
  Future<OrderResponse> createOrder(ServiceCall call, Order request) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }

  @override
  Future<OrderResponse> deleteOrder(ServiceCall call, OrderRequest request) {
    // TODO: implement deleteOrder
    throw UnimplementedError();
  }

  @override
  Future<OrderResponse> getOrder(ServiceCall call, OrderRequest request) {
    // TODO: implement getOrder
    throw UnimplementedError();
  }

  @override
  Future<OrderListResponse> listOrders(ServiceCall call, OrderRequest request) {
    // TODO: implement listOrders
    throw UnimplementedError();
  }

  @override
  Future<OrderResponse> updateOrder(ServiceCall call, Order request) {
    // TODO: implement updateOrder
    throw UnimplementedError();
  }

  @override
  Future<PizzaListResponse> listPizzas(ServiceCall call, OrderRequest request) {
    log('listPizzas rpc called');
    print('listPizzas rpc called');

    final response = PizzaListResponse(pizzas: _pizzas);
    return Future.value(response);
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
    Pizza(
      id: pizzaId,
      quantity: quantity,
      name: pizza.name,
      price: pizza.price,
      description: pizza.description,
      vegetarian: pizza.vegetarian,
      imageURL: pizza.imageURL,
    );
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

  @override
  Future<PizzaQuantityUpdateResponse> updatePizzaQuantity(
    ServiceCall call,
    PizzaQuantityUpdateRequest request,
  ) {
    final pizzaIndex = _pizzas.indexWhere((p) => p.id == request.pizzaId);
    if (pizzaIndex >= 0) {
      _pizzas[pizzaIndex].quantity = request.newQuantity;

      // Send updates to all subscribers for this pizza
      if (_subscribers.containsKey(request.pizzaId)) {
        final update =
            PizzaUpdate(id: request.pizzaId, quantity: request.newQuantity);
        _subscribers[request.pizzaId]!.add(update);
      }
    }
    return Future.value(
      PizzaQuantityUpdateResponse(pizza: _pizzas[pizzaIndex]),
    );
  }
}

Future<List<Pizza>> loadPizzas() async {
  final jsonString = await File('assets/sample_data.json').readAsString();
  final jsonData = jsonDecode(jsonString) as List<dynamic>;

  final pizzas = jsonData
      .map((e) => models.Pizza.fromJson(e as Map<String, dynamic>))
      .toList();

  final pizzaProtos = pizzas.map(
    (models.Pizza item) => Pizza(
      id: item.name,
      name: item.name,
      description: item.description,
      price: item.price,
      vegetarian: item.vegetarian,
      imageURL: item.imageURL,
    ),
  );

  return pizzaProtos.toList();
}
