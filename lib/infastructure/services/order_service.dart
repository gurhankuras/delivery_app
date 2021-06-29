import 'dart:io';

import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../domain/order/order.dart';
import '../order/order_dto.dart';

@LazySingleton()
class OrderService {
  final Dio dio;

  OrderService({required this.dio});

// TODO
  Future<bool> updateDeliveryStatus(Map<String, dynamic> payload) async {
    final url = '/update-order-status';
    final response = await dio.post(url, data: payload);

    if (response.statusCode == HttpStatus.ok &&
        response.data['error'] == null) {
      return true;
    }
    return false;
  }

  Future<Option<String>> create(Order order) async {
    await Future.delayed(Duration(seconds: 2));
    return Future.value(some('34533345556'));
  }

  Future<Order?> read(String id) async {
    final url = '/track/$id';
    final response = await dio.get(url);

    if (response.statusCode == HttpStatus.ok) {
      return OrderDTO.fromJson(response.data).toDomain();
    }
    throw response.data;
  }

// TODO
  Future<void> update(Order order) {
    return updateDeliveryStatus({});
  }

  Future<Order>? queryTrackId(String trackNo) {}
}
