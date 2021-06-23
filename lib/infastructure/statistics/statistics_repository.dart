import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/material/date.dart';

import '../../domain/statistics/i_statistics_repository.dart';
import '../../domain/statistics/statistics.dart';
import '../../domain/statistics/statistics_failure.dart';
import 'statistics_dto.dart';

BaseOptions _defaultDioOptions = BaseOptions(
  baseUrl: _baseUrl,
  receiveDataWhenStatusError: true,
  receiveTimeout: 3000,
  connectTimeout: 3000,
  sendTimeout: 3000,
);

int PORT = 4000;
String _baseUrl = Platform.isAndroid
    ? 'http://10.0.2.2:$PORT/api/statistics'
    : 'http://localhost:$PORT/api/statistics';

class StatisticsRepository implements IStatisticsRepository {
  Dio dio;

  StatisticsRepository({BaseOptions? dioOptions})
      : dio = Dio(dioOptions ?? _defaultDioOptions);

  @override
  Future<Either<StatisticsFailure, Statistics>> fetchByDate(
      Stat stat, DateTime date) async {
    final dateString = date.toIso8601String();
    final urlPart = stat.str();

    try {
      final response =
          await dio.post('$_baseUrl$urlPart', data: {'date': dateString});

      if (response.statusCode != HttpStatus.ok) {
        return left(StatisticsFailure.unexpected());
      }
      if (response.data is Map) {
        return right(StatisticsDTO.fromJson(response.data).toDomain());
      }
      return left(StatisticsFailure.unexpected());
    } on DioError catch (e) {
      print(e);
      return left(StatisticsFailure.unexpected());
    }
  }
// TODO

  @override
  Future<Either<StatisticsFailure, Statistics>> fetchByDateRange(
      Stat stat, DateTimeRange range) async {
    await Future.delayed(Duration(seconds: 2));
    return Future.value(
        right(Statistics(labels: ['Gurhan', 'Kuras'], values: [64, 22])));
  }
// TODO
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