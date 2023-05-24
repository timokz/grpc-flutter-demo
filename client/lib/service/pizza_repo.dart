import 'package:meetup_demo/service/grpc_service.dart';
import 'package:models/models.dart';

class PizzaRepo {
  const PizzaRepo({required GRPCService grpcService})
      : _grpcService = grpcService;

  final GRPCService _grpcService;

  Future<List<Pizza>> get pizzas => _grpcService.loadPizzas();
}
