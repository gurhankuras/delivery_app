// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchOrderEventTearOff {
  const _$SearchOrderEventTearOff();

  _SearchButtonPressed searchButtonPressed(String trackNumber) {
    return _SearchButtonPressed(
      trackNumber,
    );
  }
}

/// @nodoc
const $SearchOrderEvent = _$SearchOrderEventTearOff();

/// @nodoc
mixin _$SearchOrderEvent {
  String get trackNumber => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) searchButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? searchButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchOrderEventCopyWith<SearchOrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOrderEventCopyWith<$Res> {
  factory $SearchOrderEventCopyWith(
          SearchOrderEvent value, $Res Function(SearchOrderEvent) then) =
      _$SearchOrderEventCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$SearchOrderEventCopyWithImpl<$Res>
    implements $SearchOrderEventCopyWith<$Res> {
  _$SearchOrderEventCopyWithImpl(this._value, this._then);

  final SearchOrderEvent _value;
  // ignore: unused_field
  final $Res Function(SearchOrderEvent) _then;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(_value.copyWith(
      trackNumber: trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchButtonPressedCopyWith<$Res>
    implements $SearchOrderEventCopyWith<$Res> {
  factory _$SearchButtonPressedCopyWith(_SearchButtonPressed value,
          $Res Function(_SearchButtonPressed) then) =
      __$SearchButtonPressedCopyWithImpl<$Res>;
  @override
  $Res call({String trackNumber});
}

/// @nodoc
class __$SearchButtonPressedCopyWithImpl<$Res>
    extends _$SearchOrderEventCopyWithImpl<$Res>
    implements _$SearchButtonPressedCopyWith<$Res> {
  __$SearchButtonPressedCopyWithImpl(
      _SearchButtonPressed _value, $Res Function(_SearchButtonPressed) _then)
      : super(_value, (v) => _then(v as _SearchButtonPressed));

  @override
  _SearchButtonPressed get _value => super._value as _SearchButtonPressed;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(_SearchButtonPressed(
      trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchButtonPressed implements _SearchButtonPressed {
  const _$_SearchButtonPressed(this.trackNumber);

  @override
  final String trackNumber;

  @override
  String toString() {
    return 'SearchOrderEvent.searchButtonPressed(trackNumber: $trackNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchButtonPressed &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  _$SearchButtonPressedCopyWith<_SearchButtonPressed> get copyWith =>
      __$SearchButtonPressedCopyWithImpl<_SearchButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String trackNumber) searchButtonPressed,
  }) {
    return searchButtonPressed(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String trackNumber)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchButtonPressed value) searchButtonPressed,
  }) {
    return searchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchButtonPressed value)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SearchButtonPressed implements SearchOrderEvent {
  const factory _SearchButtonPressed(String trackNumber) =
      _$_SearchButtonPressed;

  @override
  String get trackNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchButtonPressedCopyWith<_SearchButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchOrderStateTearOff {
  const _$SearchOrderStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _InvalidFormat invalidFormat(ValueFailure<String> failure) {
    return _InvalidFormat(
      failure,
    );
  }

  _Navigating navigating(String trackId) {
    return _Navigating(
      trackId,
    );
  }
}

/// @nodoc
const $SearchOrderState = _$SearchOrderStateTearOff();

/// @nodoc
mixin _$SearchOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValueFailure<String> failure) invalidFormat,
    required TResult Function(String trackId) navigating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValueFailure<String> failure)? invalidFormat,
    TResult Function(String trackId)? navigating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Navigating value) navigating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Navigating value)? navigating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchOrderStateCopyWith<$Res> {
  factory $SearchOrderStateCopyWith(
          SearchOrderState value, $Res Function(SearchOrderState) then) =
      _$SearchOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchOrderStateCopyWithImpl<$Res>
    implements $SearchOrderStateCopyWith<$Res> {
  _$SearchOrderStateCopyWithImpl(this._value, this._then);

  final SearchOrderState _value;
  // ignore: unused_field
  final $Res Function(SearchOrderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchOrderStateCopyWithImpl<$Res>
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
    return 'SearchOrderState.initial()';
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
    required TResult Function(ValueFailure<String> failure) invalidFormat,
    required TResult Function(String trackId) navigating,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValueFailure<String> failure)? invalidFormat,
    TResult Function(String trackId)? navigating,
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
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Navigating value) navigating,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Navigating value)? navigating,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchOrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$InvalidFormatCopyWith<$Res> {
  factory _$InvalidFormatCopyWith(
          _InvalidFormat value, $Res Function(_InvalidFormat) then) =
      __$InvalidFormatCopyWithImpl<$Res>;
  $Res call({ValueFailure<String> failure});

  $ValueFailureCopyWith<String, $Res> get failure;
}

/// @nodoc
class __$InvalidFormatCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res>
    implements _$InvalidFormatCopyWith<$Res> {
  __$InvalidFormatCopyWithImpl(
      _InvalidFormat _value, $Res Function(_InvalidFormat) _then)
      : super(_value, (v) => _then(v as _InvalidFormat));

  @override
  _InvalidFormat get _value => super._value as _InvalidFormat;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_InvalidFormat(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<String>,
    ));
  }

  @override
  $ValueFailureCopyWith<String, $Res> get failure {
    return $ValueFailureCopyWith<String, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_InvalidFormat implements _InvalidFormat {
  const _$_InvalidFormat(this.failure);

  @override
  final ValueFailure<String> failure;

  @override
  String toString() {
    return 'SearchOrderState.invalidFormat(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidFormat &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$InvalidFormatCopyWith<_InvalidFormat> get copyWith =>
      __$InvalidFormatCopyWithImpl<_InvalidFormat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValueFailure<String> failure) invalidFormat,
    required TResult Function(String trackId) navigating,
  }) {
    return invalidFormat(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValueFailure<String> failure)? invalidFormat,
    TResult Function(String trackId)? navigating,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Navigating value) navigating,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Navigating value)? navigating,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class _InvalidFormat implements SearchOrderState {
  const factory _InvalidFormat(ValueFailure<String> failure) = _$_InvalidFormat;

  ValueFailure<String> get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InvalidFormatCopyWith<_InvalidFormat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NavigatingCopyWith<$Res> {
  factory _$NavigatingCopyWith(
          _Navigating value, $Res Function(_Navigating) then) =
      __$NavigatingCopyWithImpl<$Res>;
  $Res call({String trackId});
}

/// @nodoc
class __$NavigatingCopyWithImpl<$Res>
    extends _$SearchOrderStateCopyWithImpl<$Res>
    implements _$NavigatingCopyWith<$Res> {
  __$NavigatingCopyWithImpl(
      _Navigating _value, $Res Function(_Navigating) _then)
      : super(_value, (v) => _then(v as _Navigating));

  @override
  _Navigating get _value => super._value as _Navigating;

  @override
  $Res call({
    Object? trackId = freezed,
  }) {
    return _then(_Navigating(
      trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Navigating implements _Navigating {
  const _$_Navigating(this.trackId);

  @override
  final String trackId;

  @override
  String toString() {
    return 'SearchOrderState.navigating(trackId: $trackId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Navigating &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality().equals(other.trackId, trackId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackId);

  @JsonKey(ignore: true)
  @override
  _$NavigatingCopyWith<_Navigating> get copyWith =>
      __$NavigatingCopyWithImpl<_Navigating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ValueFailure<String> failure) invalidFormat,
    required TResult Function(String trackId) navigating,
  }) {
    return navigating(trackId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ValueFailure<String> failure)? invalidFormat,
    TResult Function(String trackId)? navigating,
    required TResult orElse(),
  }) {
    if (navigating != null) {
      return navigating(trackId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InvalidFormat value) invalidFormat,
    required TResult Function(_Navigating value) navigating,
  }) {
    return navigating(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InvalidFormat value)? invalidFormat,
    TResult Function(_Navigating value)? navigating,
    required TResult orElse(),
  }) {
    if (navigating != null) {
      return navigating(this);
    }
    return orElse();
  }
}

abstract class _Navigating implements SearchOrderState {
  const factory _Navigating(String trackId) = _$_Navigating;

  String get trackId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NavigatingCopyWith<_Navigating> get copyWith =>
      throw _privateConstructorUsedError;
}
