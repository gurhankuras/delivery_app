part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.startedFetchingLocations() = _StartedFetchingLocations;
  const factory MapEvent.locationSelected(LatLng location) = _LocationSelected;
  const factory MapEvent.currentLocationRequested() = _CurrentLocationDetected;
  const factory MapEvent.confirmed() = _Confirmed;
  const factory MapEvent.controllerInitialized() = _ControllerInitialized;
}
