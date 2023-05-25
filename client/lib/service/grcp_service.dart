import 'dart:async';
import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:meetup_demo/protos/generated/protos.dart';
import 'package:meetup_demo/service/pizzeria_interface.dart';

class GRPCService implements PizzeriaInterface {
  factory GRPCService() {
    return _singleton;
  }

  GRPCService._internal();
  static final GRPCService _singleton = GRPCService._internal();

  PizzeriaClient? _client;
  final StreamController<PizzaUpdateResponse> _controller =
      StreamController<PizzaUpdateResponse>.broadcast();

  static Future<GRPCService> init() async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    try {
      await channel.getConnection();
      log('Connected to server!');
      print('Connected to server! with ${channel.port}');
      _singleton._client = PizzeriaClient(
        channel,
      );
    } catch (e) {
      log('Error connecting to server: $e');
      print('Error connecting to server: $e');
    }
    return GRPCService();
  }

  Future<List<Pizza>> loadPizzas() async {
    print('calling listPizzas rpc');
    try {
      final pizzaResponse =
          await _singleton._client?.listPizzas(OrderRequest());
      log('called listPizzas rpc');
      print('called listPizzas rpc');
      return pizzaResponse!.pizzas.toList();
    } catch (e) {
      log('Error loading pizzas: $e');
      print('Error loading pizzas: $e');
      rethrow;
    }
  }

  @override
  Future<OrderResponse> createOrder(Order order) async {
    try {
      final response = await _singleton._client?.createOrder(order);
      return response!;
    } catch (e) {
      log('Error creating order: $e');
      print('Error creating order: $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteOrder(String id) async {
    try {
      await _singleton._client?.deleteOrder(OrderRequest(orderId: id));
    } catch (e) {
      log('Error deleting order: $e');
      print('Error deleting order: $e');
      rethrow;
    }
  }

  @override
  Future<OrderResponse> getOrder(String id) async {
    try {
      final response =
          await _singleton._client?.getOrder(OrderRequest(orderId: id));
      return response!;
    } catch (e) {
      log('Error getting order: $e');
      print('Error getting order: $e');
      rethrow;
    }
  }

  @override
  Future<List<Order>> getOrders() {
    // TODO: implement getOrders
    throw UnimplementedError();
  }

  @override
  Future<Order> updateOrder(Order order) {
    // TODO: implement updateOrder
    throw UnimplementedError();
  }

  @override
  Stream<PizzaUpdateResponse> subscribeToPizzas(PizzaUpdateRequest request) {
    final stream = _client?.subscribeToPizza(request).asBroadcastStream();

    // Listen for updates on the stream and add them to the controller
    stream!.listen(_controller.add);

    return _controller.stream;
  }

  @override
  Future<PizzaQuantityUpdateResponse> updatePizzaQuantity(
    PizzaQuantityUpdateRequest request,
  ) async {
    try {
      final response = await _singleton._client?.updatePizzaQuantity(request);
      return response!;
    } catch (e) {
      log('Error updating pizza quantity: $e');
      print('Error updating pizza quantity: $e');
      rethrow;
    }
  }
}
