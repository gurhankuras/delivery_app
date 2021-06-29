import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../domain/statistics/i_statistics_repository.dart';
import '../../../domain/statistics/statistics.dart';
import '../../../domain/statistics/statistics_failure.dart';
import '../../../infastructure/statistics/statistics_repository.dart';
import '../../../presentation/core/logger.dart';

part 'statistics_bloc.freezed.dart';
part 'statistics_event.dart';
part 'statistics_state.dart';

@injectable
class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  final IStatisticsRepository repository;
  StatisticsBloc(this.repository)
      : super(StatisticsState.initial(lastPickedDate: DateTime.now())) {
    log.w('StatisticsBloc created');
  }
  DateTime date = DateTime.now();

  @override
  Stream<StatisticsState> mapEventToState(
    StatisticsEvent event,
  ) async* {
    yield* event.map(
      fetchingStarted: (e) async* {
        date = e.date;
        yield StatisticsState.loading(lastPickedDate: date);
        final statisticsOrFailure =
            await repository.fetchByDate(e.stat, e.date);

        yield statisticsOrFailure.fold(
            (failure) => StatisticsState.loadFailure(
                  failure: failure,
                  lastPickedDate: date,
                ), (statistics) {
          return StatisticsState.loadSuccess(
              stat: statistics, lastPickedDate: date);
        });
      },
      // fetchingCompleted: (e) async* {},
    );
  }
}
