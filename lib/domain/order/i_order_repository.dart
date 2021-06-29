import 'package:dartz/dartz.dart' hide Order;

import '../core/failures.dart';
import 'order.dart';

abstract class IOrderRepository {
  Future<Either<ValueFailure<String>, String>> create(Order order);
  Future<Either<ValueFailure<String>, Order>> getOne(String id);
  Future<Either<ValueFailure<String>, Unit>> update(Order order);
}
