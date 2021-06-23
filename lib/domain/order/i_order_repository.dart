import 'order.dart';

abstract class IOrderRepository {
  Future<String?> create(Order order);
  Future<Order?> getOne(String id);
  Future<void> update(Order order);
}
