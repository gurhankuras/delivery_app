// import 'dart:io';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// class OrderStatisticsService {
//   Dio? dio;

//   OrderStatisticsService({this.dio}) {
//     dio ??= Dio(_getDefaultDioOptions);
//   }

//   BaseOptions get _getDefaultDioOptions => BaseOptions(
//         baseUrl: _baseUrl,
//         receiveDataWhenStatusError: true,
//         receiveTimeout: 3000,
//         connectTimeout: 3000,
//         sendTimeout: 3000,
//       );

//   String get _baseUrl => Platform.isAndroid
//       ? 'http://10.0.2.2:5000/stats/category'
//       : 'http://localhost:5000/stats/category';

//   Future<Map<String, dynamic>?> fetchCategoryStatByDate(
//       Stats stat, DateTime date) async {
//     final dateString = date.toIso8601String();
//     final url = stat.urlPart;

//     final response = await dio!.post(url, data: {'date': dateString});

//     if (response.statusCode == HttpStatus.ok) {
//       return response.data;
//     }
//     throw Exception();
//   }

//   Future<void> fetchCategoryStatByDateRange(
//       Stats stat, DateTimeRange range) async {
//     final startDateString = range.start.toIso8601String();
//     final endDateString = range.end.toIso8601String();

//     final url = stat.urlPart;

//     final response = await dio!.post(url,
//         data: {'startDate': startDateString, 'endDate': endDateString});

//     if (response.statusCode == HttpStatus.ok) {
//       if (response is Map<String, dynamic>) {
//         return response.data;
//       }
//     }
//     throw Exception();
//   }
// }

// enum Stats { quantity, amount }

// extension StatsExtension on Stats {
//   String get urlPart {
//     switch (this) {
//       case Stats.quantity:
//         return '/quantity';
//       case Stats.amount:
//         return '/amount';
//       default:
//         throw Exception('No such a url found');
//     }
//   }
// }
