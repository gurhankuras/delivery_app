import 'dart:io';

import 'package:delivery_app/domain/order/order.dart';
import 'package:delivery_app/infastructure/order/order_dto.dart';
import 'package:dio/dio.dart';

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

  @override
  Future<String?> create(Order order) async {
    try {
      final response = await dio!.post(
        '/new-order',
        data: OrderDTO.fromDomain(order).toJson(),
      );
      if (response.statusCode == HttpStatus.ok) {
        final id = response.data['id'];
        if (id is int) {
          return id.toString();
        }
        return null;
      }
    } on DioError catch (_) {
      print('Timeout Error occured!!!!!');
      return null;
    } on SocketException catch (_) {
      print('Socket Error occured!!!!!');
      return null;
    } on Error catch (_) {
      print('General Error occured!!!!!');
      return null;
    }
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
