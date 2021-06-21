import 'package:delivery_app/domain/order/i_order_repository.dart';
import 'package:delivery_app/domain/order/order.dart';

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
