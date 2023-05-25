import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

abstract class PizzeriaInterface {
  Stream<PizzaUpdateResponse> subscribeToPizzas(PizzaUpdateRequest request);
  Future<PizzaUpdateResponse> updatePizzaQuantity(
    PizzaUpdateRequest request,
  );
  Future<PizzaListResponse> loadPizzas();
}
