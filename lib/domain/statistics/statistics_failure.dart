import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_failure.freezed.dart';

@freezed
abstract class StatisticsFailure with _$StatisticsFailure {
  const factory StatisticsFailure.unexpected() = _Unexpected;
  const factory StatisticsFailure.noInternetConnection() =
      _NoInternetConnection;
}
