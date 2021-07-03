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

  _Confirmed confirmed() {
    return const _Confirmed();
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
    required TResult Function() confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? confirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedFetchingLocations value)
        startedFetchingLocations,
    required TResult Function(_LocationSelected value) locationSelected,
    required TResult Function(_Confirmed value) confirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_Confirmed value)? confirmed,
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
    required TResult Function() confirmed,
  }) {
    return startedFetchingLocations();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? confirmed,
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
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return startedFetchingLocations(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_Confirmed value)? confirmed,
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
    required TResult Function() confirmed,
  }) {
    return locationSelected(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? confirmed,
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
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return locationSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_Confirmed value)? confirmed,
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
    required TResult Function() confirmed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startedFetchingLocations,
    TResult Function(LatLng location)? locationSelected,
    TResult Function()? confirmed,
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
    required TResult Function(_Confirmed value) confirmed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedFetchingLocations value)? startedFetchingLocations,
    TResult Function(_LocationSelected value)? locationSelected,
    TResult Function(_Confirmed value)? confirmed,
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
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Success success(List<LatLng> locations) {
    return _Success(
      locations,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Failure failure(LocationFailure failure) {
    return _Failure(
      failure,
    );
  }

  _HasSelectedLocation hasSelectedLocation(
      List<LatLng> locations, LatLng selectedLocation) {
    return _HasSelectedLocation(
      locations,
      selectedLocation,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'MapState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MapState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({List<LatLng> locations});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? locations = freezed,
  }) {
    return _then(_Success(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.locations);

  @override
  final List<LatLng> locations;

  @override
  String toString() {
    return 'MapState.success(locations: $locations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locations);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) {
    return success(locations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(locations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements MapState {
  const factory _Success(List<LatLng> locations) = _$_Success;

  List<LatLng> get locations => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'MapState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements MapState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({LocationFailure failure});

  $LocationFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LocationFailure,
    ));
  }

  @override
  $LocationFailureCopyWith<$Res> get failure {
    return $LocationFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final LocationFailure failure;

  @override
  String toString() {
    return 'MapState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements MapState {
  const factory _Failure(LocationFailure failure) = _$_Failure;

  LocationFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HasSelectedLocationCopyWith<$Res> {
  factory _$HasSelectedLocationCopyWith(_HasSelectedLocation value,
          $Res Function(_HasSelectedLocation) then) =
      __$HasSelectedLocationCopyWithImpl<$Res>;
  $Res call({List<LatLng> locations, LatLng selectedLocation});
}

/// @nodoc
class __$HasSelectedLocationCopyWithImpl<$Res>
    extends _$MapStateCopyWithImpl<$Res>
    implements _$HasSelectedLocationCopyWith<$Res> {
  __$HasSelectedLocationCopyWithImpl(
      _HasSelectedLocation _value, $Res Function(_HasSelectedLocation) _then)
      : super(_value, (v) => _then(v as _HasSelectedLocation));

  @override
  _HasSelectedLocation get _value => super._value as _HasSelectedLocation;

  @override
  $Res call({
    Object? locations = freezed,
    Object? selectedLocation = freezed,
  }) {
    return _then(_HasSelectedLocation(
      locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<LatLng>,
      selectedLocation == freezed
          ? _value.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_HasSelectedLocation implements _HasSelectedLocation {
  const _$_HasSelectedLocation(this.locations, this.selectedLocation);

  @override
  final List<LatLng> locations;
  @override
  final LatLng selectedLocation;

  @override
  String toString() {
    return 'MapState.hasSelectedLocation(locations: $locations, selectedLocation: $selectedLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HasSelectedLocation &&
            (identical(other.locations, locations) ||
                const DeepCollectionEquality()
                    .equals(other.locations, locations)) &&
            (identical(other.selectedLocation, selectedLocation) ||
                const DeepCollectionEquality()
                    .equals(other.selectedLocation, selectedLocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(locations) ^
      const DeepCollectionEquality().hash(selectedLocation);

  @JsonKey(ignore: true)
  @override
  _$HasSelectedLocationCopyWith<_HasSelectedLocation> get copyWith =>
      __$HasSelectedLocationCopyWithImpl<_HasSelectedLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<LatLng> locations) success,
    required TResult Function() loading,
    required TResult Function(LocationFailure failure) failure,
    required TResult Function(List<LatLng> locations, LatLng selectedLocation)
        hasSelectedLocation,
  }) {
    return hasSelectedLocation(locations, selectedLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<LatLng> locations)? success,
    TResult Function()? loading,
    TResult Function(LocationFailure failure)? failure,
    TResult Function(List<LatLng> locations, LatLng selectedLocation)?
        hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (hasSelectedLocation != null) {
      return hasSelectedLocation(locations, selectedLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_HasSelectedLocation value) hasSelectedLocation,
  }) {
    return hasSelectedLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_HasSelectedLocation value)? hasSelectedLocation,
    required TResult orElse(),
  }) {
    if (hasSelectedLocation != null) {
      return hasSelectedLocation(this);
    }
    return orElse();
  }
}

abstract class _HasSelectedLocation implements MapState {
  const factory _HasSelectedLocation(
      List<LatLng> locations, LatLng selectedLocation) = _$_HasSelectedLocation;

  List<LatLng> get locations => throw _privateConstructorUsedError;
  LatLng get selectedLocation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HasSelectedLocationCopyWith<_HasSelectedLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
