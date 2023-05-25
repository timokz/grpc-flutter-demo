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
      '10.0.2.2',
      port: 5001,
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

  @override
  Future<PizzaListResponse> loadPizzas() async {
    print('calling listPizzas rpc');
    try {
      final pizzaResponse = _singleton._client?.listPizzas(OrderRequest());
      log('called listPizzas rpc');
      return pizzaResponse!;
    } catch (e) {
      log('Error loading pizzas: $e');
      print('Error loading pizzas: $e');
      rethrow;
    }
  }

  @override
  Stream<PizzaUpdateResponse> subscribeToPizzas(PizzaUpdateRequest request) {
    final stream =
        _singleton._client?.subscribeToPizza(request).asBroadcastStream();

    // Listen for updates on the stream and add them to the controller
    stream?.listen(
      _controller.add,
      onError: (error) {
        log('Error receiving pizza updates: $error');
      },
      onDone: () {
        log('Pizza updates stream closed');
      },
    );

    return stream!;
  }

  @override
  Future<PizzaUpdateResponse> updatePizzaQuantity(
    PizzaUpdateRequest request,
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
