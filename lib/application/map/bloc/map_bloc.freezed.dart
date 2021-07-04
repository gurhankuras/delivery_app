// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'map_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapEventTearOff {
  const _$MapEventTearOff();

  _StartedFetchingLocations startedFetchingLocations() {
    return const _StartedFetchingLocations();
  }

  _LocationSelected locationSelected(LatLng location) {
    return _LocationSelected(
      location,
    );
  }

  _CurrentLocationDetected currentLocationRequested() {
    return const _CurrentLocationDetected();
  }

  _Confirmed confirmed() {
    return const _Confirmed();
  }

  _ControllerInitialized controllerInitialized() {
    return const _ControllerInitialized();
  }
}

/// @nodoc
const $MapEvent = _$MapEventTearOff();

/// @nodoc
mixin _$MapEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEventCopyWith<$Res> {
  factory $MapEventCopyWith(MapEvent value, $Res Function(MapEvent) then) =
      _$MapEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapEventCopyWithImpl<$Res> implements $MapEventCopyWith<$Res> {
  _$MapEventCopyWithImpl(this._value, this._then);

  final MapEvent _value;
  // ignore: unused_field
  final $Res Function(MapEvent) _then;
}

/// @nodoc
abstract class _$StartedFetchingLocationsCopyWith<$Res> {
  factory _$StartedFetchingLocationsCopyWith(_StartedFetchingLocations value,
          $Res Function(_StartedFetchingLocations) then) =
      __$StartedFetchingLocationsCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedFetchingLocationsCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements _$StartedFetchingLocationsCopyWith<$Res> {
  __$StartedFetchingLocationsCopyWithImpl(_StartedFetchingLocations _value,
      $Res Function(_StartedFetchingLocations) _then)
      : super(_value, (v) => _then(v as _StartedFetchingLocations));

  @override
  _StartedFetchingLocations get _value =>
      super._value as _StartedFetchingLocations;
}

/// @nodoc

class _$_StartedFetchingLocations implements _StartedFetchingLocations {
  const _$_StartedFetchingLocations();

  @override
  String toString() {
    return 'MapEvent.startedFetchingLocations()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartedFetchingLocations);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) {
    return startedFetchingLocations();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) {
    if (startedFetchingLocations != null) {
      return startedFetchingLocations();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) {
    return startedFetchingLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) {
    if (startedFetchingLocations != null) {
      return startedFetchingLocations(this);
    }
    return orElse();
  }
}

abstract class _StartedFetchingLocations implements MapEvent {
  const factory _StartedFetchingLocations() = _$_StartedFetchingLocations;
}

/// @nodoc
abstract class _$LocationSelectedCopyWith<$Res> {
  factory _$LocationSelectedCopyWith(
          _LocationSelected value, $Res Function(_LocationSelected) then) =
      __$LocationSelectedCopyWithImpl<$Res>;
  $Res call({LatLng location});
}

/// @nodoc
class __$LocationSelectedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$LocationSelectedCopyWith<$Res> {
  __$LocationSelectedCopyWithImpl(
      _LocationSelected _value, $Res Function(_LocationSelected) _then)
      : super(_value, (v) => _then(v as _LocationSelected));

  @override
  _LocationSelected get _value => super._value as _LocationSelected;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_LocationSelected(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_LocationSelected implements _LocationSelected {
  const _$_LocationSelected(this.location);

  @override
  final LatLng location;

  @override
  String toString() {
    return 'MapEvent.locationSelected(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationSelected &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LocationSelectedCopyWith<_LocationSelected> get copyWith =>
      __$LocationSelectedCopyWithImpl<_LocationSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) {
    return locationSelected(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) {
    if (locationSelected != null) {
      return locationSelected(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) {
    return locationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) {
    if (locationSelected != null) {
      return locationSelected(this);
    }
    return orElse();
  }
}

abstract class _LocationSelected implements MapEvent {
  const factory _LocationSelected(LatLng location) = _$_LocationSelected;

  LatLng get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationSelectedCopyWith<_LocationSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentLocationDetectedCopyWith<$Res> {
  factory _$CurrentLocationDetectedCopyWith(_CurrentLocationDetected value,
          $Res Function(_CurrentLocationDetected) then) =
      __$CurrentLocationDetectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CurrentLocationDetectedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements _$CurrentLocationDetectedCopyWith<$Res> {
  __$CurrentLocationDetectedCopyWithImpl(_CurrentLocationDetected _value,
      $Res Function(_CurrentLocationDetected) _then)
      : super(_value, (v) => _then(v as _CurrentLocationDetected));

  @override
  _CurrentLocationDetected get _value =>
      super._value as _CurrentLocationDetected;
}

/// @nodoc

class _$_CurrentLocationDetected implements _CurrentLocationDetected {
  const _$_CurrentLocationDetected();

  @override
  String toString() {
    return 'MapEvent.currentLocationRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CurrentLocationDetected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) {
    return currentLocationRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) {
    return currentLocationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) {
    if (currentLocationRequested != null) {
      return currentLocationRequested(this);
    }
    return orElse();
  }
}

abstract class _CurrentLocationDetected implements MapEvent {
  const factory _CurrentLocationDetected() = _$_CurrentLocationDetected;
}

/// @nodoc
abstract class _$ConfirmedCopyWith<$Res> {
  factory _$ConfirmedCopyWith(
          _Confirmed value, $Res Function(_Confirmed) then) =
      __$ConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmedCopyWithImpl<$Res> extends _$MapEventCopyWithImpl<$Res>
    implements _$ConfirmedCopyWith<$Res> {
  __$ConfirmedCopyWithImpl(_Confirmed _value, $Res Function(_Confirmed) _then)
      : super(_value, (v) => _then(v as _Confirmed));

  @override
  _Confirmed get _value => super._value as _Confirmed;
}

/// @nodoc

class _$_Confirmed implements _Confirmed {
  const _$_Confirmed();

  @override
  String toString() {
    return 'MapEvent.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Confirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _Confirmed implements MapEvent {
  const factory _Confirmed() = _$_Confirmed;
}

/// @nodoc
abstract class _$ControllerInitializedCopyWith<$Res> {
  factory _$ControllerInitializedCopyWith(_ControllerInitialized value,
          $Res Function(_ControllerInitialized) then) =
      __$ControllerInitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ControllerInitializedCopyWithImpl<$Res>
    extends _$MapEventCopyWithImpl<$Res>
    implements _$ControllerInitializedCopyWith<$Res> {
  __$ControllerInitializedCopyWithImpl(_ControllerInitialized _value,
      $Res Function(_ControllerInitialized) _then)
      : super(_value, (v) => _then(v as _ControllerInitialized));

  @override
  _ControllerInitialized get _value => super._value as _ControllerInitialized;
}

/// @nodoc

class _$_ControllerInitialized implements _ControllerInitialized {
  const _$_ControllerInitialized();

  @override
  String toString() {
    return 'MapEvent.controllerInitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ControllerInitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startedFetchingLocations,
    required TResult Function(LatLng location) locationSelected,
    required TResult Function() currentLocationRequested,
    required TResult Function() confirmed,
    required TResult Function() controllerInitialized,
  }) {
    return controllerInitialized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? currentLocationRequested,
    TResult Function()? confirmed,
    TResult Function()? controllerInitialized,
    required TResult orElse(),
  }) {
    if (controllerInitialized != null) {
      return controllerInitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_CurrentLocationDetected value)
        currentLocationRequested,
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_ControllerInitialized value)
        controllerInitialized,
  }) {
    return controllerInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_CurrentLocationDetected value)? currentLocationRequested,
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_ControllerInitialized value)? controllerInitialized,
    required TResult orElse(),
  }) {
    if (controllerInitialized != null) {
      return controllerInitialized(this);
    }
    return orElse();
  }
}

abstract class _ControllerInitialized implements MapEvent {
  const factory _ControllerInitialized() = _$_ControllerInitialized;
}

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {required bool isLoading,
      required Option<List<LatLng>> locations,
      required Option<LatLng> selectedLocation,
      required Option<LatLng> currentLocation,
      required Option<LocationFailure> currentLocationFailure,
      required Option<LocationFailure> locationsFailure,
      required bool mapControllerInitialized}) {
    return _MapState(
      isLoading: isLoading,
      locations: locations,
      selectedLocation: selectedLocation,
      currentLocation: currentLocation,
      currentLocationFailure: currentLocationFailure,
      locationsFailure: locationsFailure,
      mapControllerInitialized: mapControllerInitialized,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<List<LatLng>> get locations => throw _privateConstructorUsedError;
  Option<LatLng> get selectedLocation => throw _privateConstructorUsedError;
  Option<LatLng> get currentLocation => throw _privateConstructorUsedError;
  Option<LocationFailure> get currentLocationFailure =>
      throw _privateConstructorUsedError;
  Option<LocationFailure> get locationsFailure =>
      throw _privateConstructorUsedError;
  bool get mapControllerInitialized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<List<LatLng>> locations,
      Option<LatLng> selectedLocation,
      Option<LatLng> currentLocation,
      Option<LocationFailure> currentLocationFailure,
      Option<LocationFailure> locationsFailure,
      bool mapControllerInitialized});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? locations = freezed,
    Object? selectedLocation = freezed,
    Object? currentLocation = freezed,
    Object? currentLocationFailure = freezed,
    Object? locationsFailure = freezed,
    Object? mapControllerInitialized = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Option<List<LatLng>>,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      currentLocationFailure: currentLocationFailure == freezed
          ? _value.currentLocationFailure
          : currentLocationFailure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      locationsFailure: locationsFailure == freezed
          ? _value.locationsFailure
          : locationsFailure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      mapControllerInitialized: mapControllerInitialized == freezed
          ? _value.mapControllerInitialized
          : mapControllerInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<List<LatLng>> locations,
      Option<LatLng> selectedLocation,
      Option<LatLng> currentLocation,
      Option<LocationFailure> currentLocationFailure,
      Option<LocationFailure> locationsFailure,
      bool mapControllerInitialized});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? locations = freezed,
    Object? selectedLocation = freezed,
    Object? currentLocation = freezed,
    Object? currentLocationFailure = freezed,
    Object? locationsFailure = freezed,
    Object? mapControllerInitialized = freezed,
  }) {
    return _then(_MapState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as Option<List<LatLng>>,
      selectedLocation: selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      currentLocation: currentLocation == freezed
          ? _value.currentLocation
          : currentLocation // ignore: cast_nullable_to_non_nullable
              as Option<LatLng>,
      currentLocationFailure: currentLocationFailure == freezed
          ? _value.currentLocationFailure
          : currentLocationFailure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      locationsFailure: locationsFailure == freezed
          ? _value.locationsFailure
          : locationsFailure // ignore: cast_nullable_to_non_nullable
              as Option<LocationFailure>,
      mapControllerInitialized: mapControllerInitialized == freezed
          ? _value.mapControllerInitialized
          : mapControllerInitialized // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MapState implements _MapState {
  const _$_MapState(
      {required this.isLoading,
      required this.locations,
      required this.selectedLocation,
      required this.currentLocation,
      required this.currentLocationFailure,
      required this.locationsFailure,
      required this.mapControllerInitialized});

  @override
  final bool isLoading;
  @override
  final Option<List<LatLng>> locations;
  @override
  final Option<LatLng> selectedLocation;
  @override
  final Option<LatLng> currentLocation;
  @override
  final Option<LocationFailure> currentLocationFailure;
  @override
  final Option<LocationFailure> locationsFailure;
  @override
  final bool mapControllerInitialized;

  @override
  String toString() {
    return 'MapState(isLoading: $isLoading, locations: $locations, selectedLocation: $selectedLocation, currentLocation: $currentLocation, currentLocationFailure: $currentLocationFailure, locationsFailure: $locationsFailure, mapControllerInitialized: $mapControllerInitialized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MapState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.selectedLocation, selectedLocation) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocation, selectedLocation)) &&
            (identical(other.currentLocation, currentLocation) ||
                const DeepCollectionEquality()
                    .equals(other.currentLocation, currentLocation)) &&
            (identical(other.currentLocationFailure, currentLocationFailure) ||
                const DeepCollectionEquality().equals(
                    other.currentLocationFailure, currentLocationFailure)) &&
            (identical(other.locationsFailure, locationsFailure) ||
                const DeepCollectionEquality()
                    .equals(other.locationsFailure, locationsFailure)) &&
            (identical(
                    other.mapControllerInitialized, mapControllerInitialized) ||
                const DeepCollectionEquality().equals(
                    other.mapControllerInitialized, mapControllerInitialized)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(selectedLocation) ^
      const DeepCollectionEquality().hash(currentLocation) ^
      const DeepCollectionEquality().hash(currentLocationFailure) ^
      const DeepCollectionEquality().hash(locationsFailure) ^
      const DeepCollectionEquality().hash(mapControllerInitialized);

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState implements MapState {
  const factory _MapState(
      {required bool isLoading,
      required Option<List<LatLng>> locations,
      required Option<LatLng> selectedLocation,
      required Option<LatLng> currentLocation,
      required Option<LocationFailure> currentLocationFailure,
      required Option<LocationFailure> locationsFailure,
      required bool mapControllerInitialized}) = _$_MapState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<List<LatLng>> get locations => throw _privateConstructorUsedError;
  @override
  Option<LatLng> get selectedLocation => throw _privateConstructorUsedError;
  @override
  Option<LatLng> get currentLocation => throw _privateConstructorUsedError;
  @override
  Option<LocationFailure> get currentLocationFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<LocationFailure> get locationsFailure =>
      throw _privateConstructorUsedError;
  @override
  bool get mapControllerInitialized => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
