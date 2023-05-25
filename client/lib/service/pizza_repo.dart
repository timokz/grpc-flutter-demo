import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';
import 'package:meetup_demo/service/grcp_service.dart';

class PizzaRepo {
  const PizzaRepo({required GRPCService grpcService})
      : _grpcService = grpcService;

  final GRPCService _grpcService;

  Future<List<Pizza>> get pizzas => _grpcService.loadPizzas();
}
