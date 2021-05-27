import 'dart:io';

import 'package:dio/dio.dart';

import '../dao/order.dart';

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

  Future<String?> submitOrder(Order order) async {
    try {
      final response = await dio!.post('/new-order', data: order.toJson());
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

  Future<Order> queryTrackId(String id) async {
    final url = '/track/$id';
    final response = await dio!.get(url);

    if (response.statusCode == HttpStatus.ok) {
      return Order.fromJson(response.data);
    }
    throw response.data;
  }

  // Future<String?> getVendorPhoneNumber() async {
  //   final url = '$baseUrl/vendor/phone';
  //   final response = await dio.get(url);

  //   if (response.statusCode == HttpStatus.ok) {
  //     final phoneNumber = response.data;
  //     if (phoneNumber is String) {
  //       return phoneNumber;
  //     }
  //     return null;
  //   }
  //   return null;
  // }
}
