import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failures.freezed.dart';

@freezed
class LocationFailure with _$LocationFailure {
  const factory LocationFailure.locationServicesDisabled({
    @Default('Location services are disabled') String message,
  }) = _LocationServicesDisabled;
  const factory LocationFailure.permissionDenied({
    @Default('Location permissions are denied') String message,
  }) = _PermissionDenied;
  const factory LocationFailure.permissonDeniedForever({
    @Default('Location permissions are permanently denied, we cannot request permissions.')
        String message,
  }) = _PermissionDeniedForever;
}

String locationFailureSwitch(LocationFailure f) {
  return f.map(
    locationServicesDisabled: (f) => f.message,
    permissionDenied: (f) => f.message,
    permissonDeniedForever: (f) => f.message,
  );
}
