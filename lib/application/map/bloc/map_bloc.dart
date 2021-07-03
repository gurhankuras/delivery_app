import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/core/i_location_service.dart';
import '../../../domain/core/location_failures.dart';

part 'map_bloc.freezed.dart';
part 'map_event.dart';
part 'map_state.dart';

@injectable
class MapBloc extends Bloc<MapEvent, MapState> {
  ILocationService locationService;
  MapBloc(
    this.locationService,
  ) : super(MapState.initial());

  @override
  Stream<MapState> mapEventToState(
    MapEvent event,
  ) async* {
    event.map(
      startedFetchingLocations: (e) async* {
        yield MapState.loading();
        final failureOrLocations =
            await locationService.getFranchiseLocations();
        yield* failureOrLocations.fold(
          (f) async* {
            yield MapState.failure(f);
          },
          (locations) async* {
            yield MapState.success(locations);
          },
        );
      },
      locationSelected: (e) async* {
        yield MapState.hasSelectedLocation(
          state.maybeMap(
            orElse: () => throw Error(),
            success: (state) => state.locations,
          ),
          e.location,
        );
      },
      confirmed: (e) async* {
        yield state.map(
          initial: (s) => s,
          success: (s) => s,
          loading: (s) => s,
          failure: (s) => s,
          hasSelectedLocation: (s) => s,
        );
      },
    );
  }
}
