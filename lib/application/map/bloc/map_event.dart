part of 'map_bloc.dart';

@freezed
class MapEvent with _$MapEvent {
  const factory MapEvent.startedFetchingLocations() = _StartedFetchingLocations;
  const factory MapEvent.locationSelected(LatLng location) = _LocationSelected;
  const factory MapEvent.confirmed() = _Confirmed;
}
