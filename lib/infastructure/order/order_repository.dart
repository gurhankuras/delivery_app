import '../../domain/order/i_order_repository.dart';
import '../../domain/order/order.dart';

class OrderRepository implements IOrderRepository {
  @override
  Future<String?> create(order) {
    throw UnimplementedError();
  }

  @override
  Future<Order?> getOne(String id) {
    throw UnimplementedError();
  }

  @override
  Future<void> update(order) {
    throw UnimplementedError();
  }
}
