import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class OrderStatisticsService {
  final Dio dio;
  OrderStatisticsService(this.dio);

  String get baseUrl => Platform.isAndroid
      ? 'http://10.0.2.2:5000/stats/category'
      : 'http://localhost:5000/stats/category';

  Future<Map<String, dynamic>?> fetchCategoryStatByDate(
      Stats stat, DateTime date) async {
    final dateString = date.toIso8601String();
    final url = '$baseUrl${stat.urlPart}';

    final response = await dio.post(url, data: {'date': dateString});

    if (response.statusCode == HttpStatus.ok) {
      // if (response is Map<String, dynamic>) {
      return response.data;
      // }
      // return null;
    }
    return null;
  }

  Future<void> fetchCategoryStatByDateRange(
      Stats stat, DateTimeRange range) async {
    final startDateString = range.start.toIso8601String();
    final endDateString = range.end.toIso8601String();

    final url = '$baseUrl${stat.urlPart}';

    final response = await dio.post(url,
        data: {'startDate': startDateString, 'endDate': endDateString});

    if (response.statusCode == HttpStatus.ok) {
      if (response is Map<String, dynamic>) {
        return response.data;
      }
      return null;
    }
    return null;
  }
}

enum Stats { quantity, amount }

extension StatsExtension on Stats {
  String get urlPart {
    switch (this) {
      case Stats.quantity:
        return '/quantity';
      case Stats.amount:
        return '/amount';
      default:
        throw Exception('No such a url found');
    }
  }
}
