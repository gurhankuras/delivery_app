import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../infastructure/statistics/statistics_repository.dart';
import 'statistics.dart';
import 'statistics_failure.dart';

abstract class IStatisticsRepository {
  Future<Either<StatisticsFailure, Statistics>> fetchByDate(
      Stat stat, DateTime date);
  Future<Either<StatisticsFailure, Statistics>> fetchByDateRange(
      Stat stat, DateTimeRange range);
}
