import 'package:dartz/dartz.dart' hide Order;

import '../../domain/core/failures.dart';
import '../../domain/order/i_order_repository.dart';
import '../../domain/order/order.dart';

class OrderRepository implements IOrderRepository {
  @override
  Future<Either<ValueFailure<String>, Unit>> create(Order order) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure<String>, Order>> getOne(String id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  Future<Either<ValueFailure<String>, Unit>> update(Order order) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
