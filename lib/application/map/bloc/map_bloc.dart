import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
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
  ) : super(MapState.initial()) {
    log.w('MapBloc created');
  }

  @override
  Stream<MapState> mapEventToState(
    MapEvent event,
  ) async* {
    yield* event.map(
      controllerInitialized: (e) async* {
        yield state.copyWith(mapControllerInitialized: true);
      },
      currentLocationRequested: (e) async* {
        yield state.copyWith(isLoading: true);
        final failureOrCurrentLocation =
            await locationService.getCurrentPosition();

        yield* failureOrCurrentLocation.fold(
          // FAILURE
          (f) async* {
            yield state.copyWith(
              currentLocation: none(),
              currentLocationFailure: some(f),
              isLoading: false,
            );
          },
          // SUCCESS
          (p) async* {
            log.wtf(p);

            yield state.copyWith(
              currentLocation: some(LatLng(p.latitude, p.longitude)),
              currentLocationFailure: none(),
            );
            add(MapEvent.startedFetchingLocations());
          },
        );
      },
      startedFetchingLocations: (e) async* {
        final failureOrLocations =
            await locationService.getFranchiseLocations();

        yield* failureOrLocations.fold(
          // FAILURE
          (f) async* {
            yield state.copyWith(
              locations: none(),
              locationsFailure: some(f),
              isLoading: false,
            );
          },
          // SUCCESS
          (locations) async* {
            yield state.copyWith(
              locations: some(locations),
              locationsFailure: none(),
              isLoading: false,
            );
          },
        );
      },
      locationSelected: (e) async* {
        yield state.copyWith(selectedLocation: some(e.location));
      },
      confirmed: (e) async* {
        yield state;
      },
    );
  }

  bool hasFailure() {
    return state.locationsFailure.isSome() ||
        state.currentLocationFailure.isSome();
  }
}
