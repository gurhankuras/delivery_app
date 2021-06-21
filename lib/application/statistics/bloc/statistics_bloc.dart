import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/domain/statistics/i_statistics_repository.dart';
import 'package:delivery_app/domain/statistics/statistics.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';
part 'statistics_bloc.freezed.dart';

class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  IStatisticsRepository repository;
  StatisticsBloc(this.repository) : super(StatisticsState.initial());

  @override
  Stream<StatisticsState> mapEventToState(
    StatisticsEvent event,
  ) async* {
    yield* event.map(
      fetchingStarted: (e) async* {
        yield StatisticsState.loading();
        final statisticsOrFailure =
            await repository.fetchByDate(e.stat, e.date);
        yield statisticsOrFailure.fold(
          (failure) => StatisticsState.loadFailure(failure),
          (statistics) => StatisticsState.loadSuccess(statistics),
        );
      },
      // fetchingCompleted: (e) async* {},
    );
  }
}
