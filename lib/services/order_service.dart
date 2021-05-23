import 'dart:io';

import 'package:dio/dio.dart';

class OrderService {
  final Dio dio;

  OrderService({
    required this.dio,
  });
  Future<bool> submitOrder(Map<String, dynamic> formData) async {
    final baseUrl = 'http://10.0.2.2:5000';
    final response = await dio.post('$baseUrl/new-order', data: formData);
    if (response.statusCode == HttpStatus.ok) {
      return true;
    }
    return false;
  }
}
