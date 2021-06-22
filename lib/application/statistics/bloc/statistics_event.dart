part of 'statistics_bloc.dart';

@freezed
class StatisticsEvent with _$StatisticsEvent {
  const factory StatisticsEvent.fetchingStarted(
      {required Stat stat, required DateTime date}) = FetchingStarted;
}
