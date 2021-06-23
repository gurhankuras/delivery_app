import 'package:dartz/dartz.dart';
import 'statistics.dart';
import 'statistics_failure.dart';
import 'package:flutter/material.dart';

abstract class IStatisticsRepository {
  Future<Either<StatisticsFailure, Statistics>> fetchByDate(
      Stat stat, DateTime date);
  Future<Either<StatisticsFailure, Statistics>> fetchByDateRange(
      Stat stat, DateTimeRange range);
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
