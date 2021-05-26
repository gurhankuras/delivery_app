import 'dart:io';

import 'package:dio/dio.dart';

import '../dao/order.dart';

class OrderService {
  final Dio dio;
  // final Order modelOrder = Order.empty();

  OrderService({
    required this.dio,
  });

  String get baseUrl =>
      Platform.isAndroid ? 'http://10.0.2.2:5000' : 'http://localhost:5000';

  Future<String?> submitOrder(Order order) async {
    final response = await dio.post('$baseUrl/new-order', data: order.toJson());
    if (response.statusCode == HttpStatus.ok) {
      final id = response.data['id'];
      if (id is int) {
        return id.toString();
      }
      return null;
    }
    return null;
  }

  Future<Order> queryTrackId(String id) async {
    final url = '$baseUrl/track/$id';
    final response = await dio.get(url);

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
