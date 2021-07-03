// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'location_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationFailureTearOff {
  const _$LocationFailureTearOff();

  _LocationServicesDisabled locationServicesDisabled(
      {String message = 'Location services are disabled'}) {
    return _LocationServicesDisabled(
      message: message,
    );
  }

  _PermissionDenied permissionDenied(
      {String message = 'Location permissions are denied'}) {
    return _PermissionDenied(
      message: message,
    );
  }

  _PermissionDeniedForever permissonDeniedForever(
      {String message =
          'Location permissions are permanently denied, we cannot request permissions.'}) {
    return _PermissionDeniedForever(
      message: message,
    );
  }
}

/// @nodoc
const $LocationFailure = _$LocationFailureTearOff();

/// @nodoc
mixin _$LocationFailure {
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) locationServicesDisabled,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) permissonDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? locationServicesDisabled,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? permissonDeniedForever,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissonDeniedForever,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationServicesDisabled value)? locationServicesDisabled,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissonDeniedForever,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationFailureCopyWith<LocationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFailureCopyWith<$Res> {
  factory $LocationFailureCopyWith(
          LocationFailure value, $Res Function(LocationFailure) then) =
      _$LocationFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$LocationFailureCopyWithImpl<$Res>
    implements $LocationFailureCopyWith<$Res> {
  _$LocationFailureCopyWithImpl(this._value, this._then);

  final LocationFailure _value;
  // ignore: unused_field
  final $Res Function(LocationFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$LocationServicesDisabledCopyWith<$Res>
    implements $LocationFailureCopyWith<$Res> {
  factory _$LocationServicesDisabledCopyWith(_LocationServicesDisabled value,
          $Res Function(_LocationServicesDisabled) then) =
      __$LocationServicesDisabledCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$LocationServicesDisabledCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements _$LocationServicesDisabledCopyWith<$Res> {
  __$LocationServicesDisabledCopyWithImpl(_LocationServicesDisabled _value,
      $Res Function(_LocationServicesDisabled) _then)
      : super(_value, (v) => _then(v as _LocationServicesDisabled));

  @override
  _LocationServicesDisabled get _value =>
      super._value as _LocationServicesDisabled;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_LocationServicesDisabled(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationServicesDisabled implements _LocationServicesDisabled {
  const _$_LocationServicesDisabled(
      {this.message = 'Location services are disabled'});

  @JsonKey(defaultValue: 'Location services are disabled')
  @override
  final String message;

  @override
  String toString() {
    return 'LocationFailure.locationServicesDisabled(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationServicesDisabled &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$LocationServicesDisabledCopyWith<_LocationServicesDisabled> get copyWith =>
      __$LocationServicesDisabledCopyWithImpl<_LocationServicesDisabled>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) locationServicesDisabled,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) permissonDeniedForever,
  }) {
    return locationServicesDisabled(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? locationServicesDisabled,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (locationServicesDisabled != null) {
      return locationServicesDisabled(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissonDeniedForever,
  }) {
    return locationServicesDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationServicesDisabled value)? locationServicesDisabled,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (locationServicesDisabled != null) {
      return locationServicesDisabled(this);
    }
    return orElse();
  }
}

abstract class _LocationServicesDisabled implements LocationFailure {
  const factory _LocationServicesDisabled({String message}) =
      _$_LocationServicesDisabled;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocationServicesDisabledCopyWith<_LocationServicesDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PermissionDeniedCopyWith<$Res>
    implements $LocationFailureCopyWith<$Res> {
  factory _$PermissionDeniedCopyWith(
          _PermissionDenied value, $Res Function(_PermissionDenied) then) =
      __$PermissionDeniedCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$PermissionDeniedCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements _$PermissionDeniedCopyWith<$Res> {
  __$PermissionDeniedCopyWithImpl(
      _PermissionDenied _value, $Res Function(_PermissionDenied) _then)
      : super(_value, (v) => _then(v as _PermissionDenied));

  @override
  _PermissionDenied get _value => super._value as _PermissionDenied;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PermissionDenied(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PermissionDenied implements _PermissionDenied {
  const _$_PermissionDenied({this.message = 'Location permissions are denied'});

  @JsonKey(defaultValue: 'Location permissions are denied')
  @override
  final String message;

  @override
  String toString() {
    return 'LocationFailure.permissionDenied(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PermissionDenied &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PermissionDeniedCopyWith<_PermissionDenied> get copyWith =>
      __$PermissionDeniedCopyWithImpl<_PermissionDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) locationServicesDisabled,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) permissonDeniedForever,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? locationServicesDisabled,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissonDeniedForever,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationServicesDisabled value)? locationServicesDisabled,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionDenied implements LocationFailure {
  const factory _PermissionDenied({String message}) = _$_PermissionDenied;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PermissionDeniedCopyWith<_PermissionDenied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PermissionDeniedForeverCopyWith<$Res>
    implements $LocationFailureCopyWith<$Res> {
  factory _$PermissionDeniedForeverCopyWith(_PermissionDeniedForever value,
          $Res Function(_PermissionDeniedForever) then) =
      __$PermissionDeniedForeverCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$PermissionDeniedForeverCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res>
    implements _$PermissionDeniedForeverCopyWith<$Res> {
  __$PermissionDeniedForeverCopyWithImpl(_PermissionDeniedForever _value,
      $Res Function(_PermissionDeniedForever) _then)
      : super(_value, (v) => _then(v as _PermissionDeniedForever));

  @override
  _PermissionDeniedForever get _value =>
      super._value as _PermissionDeniedForever;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_PermissionDeniedForever(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PermissionDeniedForever implements _PermissionDeniedForever {
  const _$_PermissionDeniedForever(
      {this.message =
          'Location permissions are permanently denied, we cannot request permissions.'});

  @JsonKey(
      defaultValue:
          'Location permissions are permanently denied, we cannot request permissions.')
  @override
  final String message;

  @override
  String toString() {
    return 'LocationFailure.permissonDeniedForever(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PermissionDeniedForever &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$PermissionDeniedForeverCopyWith<_PermissionDeniedForever> get copyWith =>
      __$PermissionDeniedForeverCopyWithImpl<_PermissionDeniedForever>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) locationServicesDisabled,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) permissonDeniedForever,
  }) {
    return permissonDeniedForever(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? locationServicesDisabled,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (permissonDeniedForever != null) {
      return permissonDeniedForever(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocationServicesDisabled value)
        locationServicesDisabled,
    required TResult Function(_PermissionDenied value) permissionDenied,
    required TResult Function(_PermissionDeniedForever value)
        permissonDeniedForever,
  }) {
    return permissonDeniedForever(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocationServicesDisabled value)? locationServicesDisabled,
    TResult Function(_PermissionDenied value)? permissionDenied,
    TResult Function(_PermissionDeniedForever value)? permissonDeniedForever,
    required TResult orElse(),
  }) {
    if (permissonDeniedForever != null) {
      return permissonDeniedForever(this);
    }
    return orElse();
  }
}

abstract class _PermissionDeniedForever implements LocationFailure {
  const factory _PermissionDeniedForever({String message}) =
      _$_PermissionDeniedForever;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PermissionDeniedForeverCopyWith<_PermissionDeniedForever> get copyWith =>
      throw _privateConstructorUsedError;
}
