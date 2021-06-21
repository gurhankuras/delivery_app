part of 'statistics_bloc.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial() = Initial;
  const factory StatisticsState.loading() = Loading;
  const factory StatisticsState.loadSuccess(Statistics stat) = LoadSuccess;
  const factory StatisticsState.loadFailure(StatisticsFailure) = LoadFailure;
}
