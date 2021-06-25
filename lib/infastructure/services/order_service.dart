import 'dart:io';

import 'package:dartz/dartz.dart' hide Order;
import 'package:dio/dio.dart';

import '../../domain/order/order.dart';
import '../order/order_dto.dart';

class OrderService {
  Dio? dio;

  OrderService({this.dio}) {
    dio ??= Dio(getDefaultDioOptions);
  }

  BaseOptions get getDefaultDioOptions => BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 3000,
        connectTimeout: 3000,
        sendTimeout: 3000,
      );

  String get baseUrl =>
      Platform.isAndroid ? 'http://10.0.2.2:5000' : 'http://localhost:5000';

// TODO
  Future<bool> updateDeliveryStatus(Map<String, dynamic> payload) async {
    final url = '/update-order-status';
    final response = await dio!.post(url, data: payload);

    if (response.statusCode == HttpStatus.ok &&
        response.data['error'] == null) {
      return true;
    }
    return false;
  }

  Future<Option<String>> create(Order order) async {
    await Future.delayed(Duration(seconds: 2));
    return Future.value(some('34533345556'));
    // try {
    //   final response = await dio!.post(
    //     '/new-order',
    //     data: OrderDTO.fromDomain(order).toJson(),
    //   );
    //   if (response.statusCode == HttpStatus.ok) {
    //     final id = response.data['id'];
    //     if (id is int) {
    //       return some(id.toString());
    //     }
    //     return none();
    //   }
    //   return none();
    // } on DioError catch (_) {
    //   print('Timeout Error occured!!!!!');
    //   return none();
    // } on SocketException catch (_) {
    //   print('Socket Error occured!!!!!');
    //   return none();
    // } catch (_) {
    //   print('General Error occured!!!!!');
    //   return none();
    // }
  }

  @override
  Future<Order?> read(String id) async {
    final url = '/track/$id';
    final response = await dio!.get(url);

    if (response.statusCode == HttpStatus.ok) {
      return OrderDTO.fromJson(response.data).toDomain();
    }
    throw response.data;
  }

// TODO
  @override
  Future<void> update(Order order) {
    return updateDeliveryStatus({});
  }

  Future<Order>? queryTrackId(String trackNo) {}
}
