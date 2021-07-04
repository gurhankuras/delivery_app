part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  const factory MapState(
      {required bool isLoading,
      required Option<List<LatLng>> locations,
      required Option<LatLng> selectedLocation,
      required Option<LatLng> currentLocation,
      required Option<LocationFailure> currentLocationFailure,
      required Option<LocationFailure> locationsFailure,
      required bool mapControllerInitialized}) = _MapState;

  factory MapState.initial() => MapState(
        currentLocation: none(),
        currentLocationFailure: none(),
        locations: none(),
        locationsFailure: none(),
        selectedLocation: none(),
        isLoading: false,
        mapControllerInitialized: false,
      );
}
