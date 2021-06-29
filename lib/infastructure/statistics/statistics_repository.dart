import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/src/material/date.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../domain/statistics/i_statistics_repository.dart';
import '../../domain/statistics/statistics.dart';
import '../../domain/statistics/statistics_failure.dart';
import '../../injection.dart';
import '../core/connectivity_dio_checker_interceptor.dart';
import 'statistics_dto.dart';

@LazySingleton(as: IStatisticsRepository)
class StatisticsRepository implements IStatisticsRepository {
  final Dio dio;

  StatisticsRepository({required this.dio}) {
    dio.interceptors.add(PrettyDioLogger());
    dio.interceptors.add(getIt<ConnectivityDioChecker>());
  }

  @override
  Future<Either<StatisticsFailure, Statistics>> fetchByDate(
      Stat stat, DateTime date) async {
    final dateString = date.toIso8601String();
    final urlPart = stat.str();

    try {
      final response =
          await dio.post('/statistics/$urlPart', data: {'date': dateString});

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

enum Stat {
  people_who_sends_the_most,
  people_who_receives_the_most,
  people_who_spends_the_most,
}

extension StatToUrlPart on Stat {
  String str() {
    switch (this) {
      case Stat.people_who_receives_the_most:
        return '/1';
      case Stat.people_who_sends_the_most:
        return '/2';
      case Stat.people_who_spends_the_most:
        return '/3';
      default:
        throw Error();
    }
  }
}
