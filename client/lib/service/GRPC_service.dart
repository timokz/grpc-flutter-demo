import 'dart:developer';

import 'package:grpc/grpc.dart';
import 'package:meetup_demo/protos/generated/protos.dart';
import 'package:models/models.dart' as models;

class GRPCService {
  factory GRPCService() {
    return _singleton;
  }

  GRPCService._internal();
  static final GRPCService _singleton = GRPCService._internal();

  PizzeriaClient? client;

  static Future<GRPCService> init() async {
    final channel = ClientChannel(
      '127.0.0.1',
      port: 5001,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    try {
      await channel.getConnection();
      log('Connected to server!');
      print('Connected to server! with ${channel.port}');
      _singleton.client = PizzeriaClient(
        channel,
      );
    } catch (e) {
      log('Error connecting to server: $e');
      print('Error connecting to server: $e');
    }
    return GRPCService();
  }

  Future<List<models.Pizza>> loadPizzas() async {
    print('calling listPizzas rpc');

    final pizzas = await _singleton.client?.listPizzas(OrderRequest());
    log('called listPizzas rpc');
    print('called listPizzas rpc');

    return pizzas!.pizzas.map((e) => e as models.Pizza).toList();
  }
}
