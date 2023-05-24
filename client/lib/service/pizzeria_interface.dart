import 'package:meetup_demo/protos/generated/protos/pizza.pb.dart';

abstract class PizzeriaInterface {
  Future<List<Order>> getOrders();
  Future<Order> getOrder(int id);
  Future<Order> createOrder(Order order);
  Future<Order> updateOrder(Order order);
  Future<void> deleteOrder(int id);
}
