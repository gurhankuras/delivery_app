import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/statistics/i_statistics_repository.dart';
import 'package:delivery_app/domain/statistics/statistics_failure.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/material/date.dart';
import 'package:delivery_app/domain/statistics/statistics.dart';

BaseOptions _defaultDioOptions = BaseOptions(
  baseUrl: _baseUrl,
  receiveDataWhenStatusError: true,
  receiveTimeout: 3000,
  connectTimeout: 3000,
  sendTimeout: 3000,
);

int PORT = 4000;
String _baseUrl = Platform.isAndroid
    ? 'http://10.0.2.2:$PORT/api/stats'
    : 'http://localhost:$PORT/api/stats';

class StatisticsRepository implements IStatisticsRepository {
  Dio? dio;

  StatisticsRepository({BaseOptions? dioOptions})
      : dio = Dio(dioOptions ?? _defaultDioOptions);

  @override
  Future<Either<StatisticsFailure, Statistics>> fetchByDate(
          Stat stat, DateTime date) async =>
// TODO

      Future.value(right(Statistics(labels: [], values: [])));

  @override
  Future<Either<StatisticsFailure, Statistics>> fetchByDateRange(
          Stat stat, DateTimeRange range) async =>
// TODO
      Future.value(right(Statistics(labels: [], values: [])));
}


/*

Dio? dio;

  OrderStatisticsService({this.dio}) {
    dio ??= Dio(_getDefaultDioOptions);
  }

  BaseOptions get _getDefaultDioOptions => BaseOptions(
        baseUrl: _baseUrl,
        receiveDataWhenStatusError: true,
        receiveTimeout: 3000,
        connectTimeout: 3000,
        sendTimeout: 3000,
      );

  String get _baseUrl => Platform.isAndroid
      ? 'http://10.0.2.2:5000/stats/category'
      : 'http://localhost:5000/stats/category';

  Future<Map<String, dynamic>?> fetchCategoryStatByDate(
      Stats stat, DateTime date) async {
    final dateString = date.toIso8601String();
    final url = stat.urlPart;

    final response = await dio!.post(url, data: {'date': dateString});

    if (response.statusCode == HttpStatus.ok) {
      return response.data;
    }
    throw Exception();
  }

  Future<void> fetchCategoryStatByDateRange(
      Stats stat, DateTimeRange range) async {
    final startDateString = range.start.toIso8601String();
    final endDateString = range.end.toIso8601String();

    final url = stat.urlPart;

    final response = await dio!.post(url,
        data: {'startDate': startDateString, 'endDate': endDateString});

    if (response.statusCode == HttpStatus.ok) {
      if (response is Map<String, dynamic>) {
        return response.data;
      }
    }
    throw Exception();
  }


 */