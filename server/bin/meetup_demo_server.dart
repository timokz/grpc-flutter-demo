import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:meetup_demo_server/protos/generated.dart%20';

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
}

class PizzeriaService extends PizzeriaServiceBase {
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
    final pizzasFuture = loadPizzas();
    return pizzasFuture.then((pizzas) {
      final response = PizzaListResponse(pizzas: pizzas);
      return response;
    });
  }
}

Future<List<Pizza>> loadPizzas() async {
  final jsonString = await File('assets/sample_data.json').readAsString();
  final jsonList = jsonDecode(jsonString) as Map<String, dynamic>;
  final pizzaList = jsonList.entries
      .map(
        (entry) => Pizza(
          name: entry.value['name'] as String,
          description: entry.value['description'] as String,
          price: entry.value['price'] as double,
          vegetarian: entry.value['vegetarian'] as bool,
          imageURL: entry.value['imageURL'] as String,
        ),
      )
      .toList();

  return pizzaList;
}
