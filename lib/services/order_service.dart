import 'dart:io';

import 'package:dio/dio.dart';

import '../dao/order.dart';

class OrderService {
  final Dio dio;
  final Order modelOrder = Order.empty();

  OrderService({
    required this.dio,
  });

  String get baseUrl =>
      Platform.isAndroid ? 'http://10.0.2.2:5000' : 'http://localhost:5000';

  Future<bool> submitOrder(Map<String, dynamic> formData) async {
    final response = await dio.post('$baseUrl/new-order', data: formData);
    if (response.statusCode == HttpStatus.ok) {
      return true;
    }
    return false;
  }

  Future<Order?> queryTrackId(String id) async {
    final url = '$baseUrl/track/$id';
    final response = await dio.get(url);

    if (response.statusCode == HttpStatus.ok) {
      return modelOrder.fromJson(response.data);
    }
    return null;
  }
}
