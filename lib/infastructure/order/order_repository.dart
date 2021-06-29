import 'dart:io';

import 'package:dartz/dartz.dart' hide Order;
import 'package:delivery_app/domain/auth/auth_failure.dart';
import 'package:delivery_app/infastructure/core/connectivity_dio_checker_interceptor.dart';
import 'package:delivery_app/infastructure/core/token_dio_interceptor.dart';
import 'package:delivery_app/infastructure/order/order_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/core/failures.dart';
import '../../domain/order/i_order_repository.dart';
import '../../domain/order/order.dart';
import '../../injection.dart';

@LazySingleton(as: IOrderRepository)
class OrderRepository implements IOrderRepository {
  final Dio dio;

  OrderRepository({required this.dio}) {
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
    dio.interceptors.add(getIt<TokenDioInterceptor>());
  }
  @override
  Future<Either<ValueFailure<String>, String>> create(Order order) async {
    try {
      final response = await dio.post(
        '/order',
        data: OrderDTO.fromDomain(order).toJson(),
      );

      if (response.statusCode == HttpStatus.ok) {
        if (response.data is String) {
          return right(response.data);
        }
        return left(ValueFailure.empty(failedValue: 'farkli response'));
      }
      return left(ValueFailure.empty(failedValue: 'try icinde'));
    } on DioError catch (e) {
      if (e.type is NotConnected) {
        return left(ValueFailure.empty(failedValue: 'not connected'));
      }
      return left(ValueFailure.empty(failedValue: 'unexpected'));
    } catch (e) {
      return left(ValueFailure.empty(failedValue: 'unexpectedd'));
    }
  }

  @override
  Future<Either<ValueFailure<String>, Order>> getOne(String id) async {
    try {
      final response = await dio.get(
        '/order/$id',
      );

      if (response.statusCode == HttpStatus.ok) {
        if (response.data is Map) {
          final order = OrderDTO.fromJson(response.data).toDomain();
          return right(order);
        }
        return left(ValueFailure.empty(failedValue: 'farkli response'));
      }
      return left(ValueFailure.empty(failedValue: 'try icinde'));
    } on DioError catch (e) {
      if (e.type is NotConnected) {
        return left(ValueFailure.empty(failedValue: 'not connected'));
      }
      return left(ValueFailure.empty(failedValue: 'unexpected'));
    } catch (e) {
      return left(ValueFailure.empty(failedValue: 'unexpectedd'));
    }
  }

  @override
  Future<Either<ValueFailure<String>, Unit>> update(Order order) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
