part of 'statistics_bloc.dart';

@freezed
class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial({required DateTime lastPickedDate}) =
      Initial;
  const factory StatisticsState.loading({required DateTime lastPickedDate}) =
      Loading;
  const factory StatisticsState.loadSuccess(
      {required Statistics stat,
      required DateTime lastPickedDate}) = LoadSuccess;
  const factory StatisticsState.loadFailure(
      {required StatisticsFailure failure,
      required DateTime lastPickedDate}) = LoadFailure;
}
