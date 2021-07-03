part of 'map_bloc.dart';

@freezed
class MapState with _$MapState {
  // const factory MapState(
  //   {
  //     required bool isLoading,
  //     required Option<List<LatLng>>>
  //   }
  // ) = _MapState;
  const factory MapState.initial() = _Initial;
  const factory MapState.success(List<LatLng> locations) = _Success;
  const factory MapState.loading() = _Loading;
  const factory MapState.failure(LocationFailure failure) = _Failure;
  const factory MapState.hasSelectedLocation(
      List<LatLng> locations, LatLng selectedLocation) = _HasSelectedLocation;
}
