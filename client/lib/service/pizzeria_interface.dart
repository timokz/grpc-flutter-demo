import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

abstract class PizzeriaInterface {
  Future<List<Order>> getOrders();
  Future<OrderResponse> getOrder(String id);
  Future<OrderResponse> createOrder(Order order);
  Future<Order> updateOrder(Order order);
  Future<void> deleteOrder(String id);
  Stream<PizzaUpdateResponse> subscribeToPizzas(PizzaUpdateRequest request);
  Future<PizzaQuantityUpdateResponse> updatePizzaQuantity(
    PizzaQuantityUpdateRequest request,
  );
}
