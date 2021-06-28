import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:string_validator/string_validator.dart';

import '../../../../domain/core/failures.dart';

part 'search_order_bloc.freezed.dart';
part 'search_order_event.dart';
part 'search_order_state.dart';

@injectable
class SearchOrderBloc extends Bloc<SearchOrderEvent, SearchOrderState> {
  SearchOrderBloc() : super(SearchOrderState.initial());

  @override
  Stream<SearchOrderState> mapEventToState(
    SearchOrderEvent event,
  ) async* {
    yield* event.map(searchButtonPressed: (e) async* {
      final failureOr = validateTrackId(e.trackNumber);

      yield* failureOr.fold((l) async* {
        yield SearchOrderState.invalidFormat(l);
        yield SearchOrderState.initial();
      }, (r) async* {
        yield SearchOrderState.navigating(e.trackNumber);
        yield SearchOrderState.initial();
      });
    });
  }
}

Either<ValueFailure<String>, Unit> validateTrackId(String id) {
  const trackIdLength = 10;
  if (id.trim() == '') {
    return left(ValueFailure.empty(failedValue: id));
  }
  if (id.length != trackIdLength) {
    return left(ValueFailure.mustBeNCharacters(
      failedValue: id,
      message: 'Must be $trackIdLength characters long',
      n: trackIdLength,
    ));
  }
  if (!isInt(id)) {
    return left(ValueFailure.invalidFormat(failedValue: id));
  }
  return right(unit);
}
