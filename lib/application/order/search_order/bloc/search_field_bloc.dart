import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_field_event.dart';
part 'search_field_state.dart';

part 'search_field_bloc.freezed.dart';

// TODO revert
// Gereksiz bloc mantigini anlamak icin yaptim
class SearchFieldBloc extends Bloc<SearchFieldEvent, SearchFieldState> {
  SearchFieldBloc() : super(SearchFieldState.initial());

  @override
  Stream<SearchFieldState> mapEventToState(
    SearchFieldEvent event,
  ) async* {
    yield* event.map(
      infoButtonPressed: (e) async* {
        yield state.copyWith(
          infoButtonPressed: true,
        );
        yield state.copyWith(
          infoButtonPressed: false,
        );
      },
      searchButtonPressed: (e) async* {
        yield state.copyWith(trackId: e.trackNumber, searchButtonPressed: true);
        yield state.copyWith(
          trackId: e.trackNumber,
          searchButtonPressed: false,
        );
      },
    );
  }
}
