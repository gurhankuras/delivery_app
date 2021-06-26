// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'general_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GeneralFailureTearOff {
  const _$GeneralFailureTearOff();

  NotFound<T> notFound<T>(
      {required T notFoundValue, String message = 'Not found'}) {
    return NotFound<T>(
      notFoundValue: notFoundValue,
      message: message,
    );
  }
}

/// @nodoc
const $GeneralFailure = _$GeneralFailureTearOff();

/// @nodoc
mixin _$GeneralFailure<T> {
  T get notFoundValue => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T notFoundValue, String message) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T notFoundValue, String message)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound<T> value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound<T> value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeneralFailureCopyWith<T, GeneralFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralFailureCopyWith<T, $Res> {
  factory $GeneralFailureCopyWith(
          GeneralFailure<T> value, $Res Function(GeneralFailure<T>) then) =
      _$GeneralFailureCopyWithImpl<T, $Res>;
  $Res call({T notFoundValue, String message});
}

/// @nodoc
class _$GeneralFailureCopyWithImpl<T, $Res>
    implements $GeneralFailureCopyWith<T, $Res> {
  _$GeneralFailureCopyWithImpl(this._value, this._then);

  final GeneralFailure<T> _value;
  // ignore: unused_field
  final $Res Function(GeneralFailure<T>) _then;

  @override
  $Res call({
    Object? notFoundValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      notFoundValue: notFoundValue == freezed
          ? _value.notFoundValue
          : notFoundValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $NotFoundCopyWith<T, $Res>
    implements $GeneralFailureCopyWith<T, $Res> {
  factory $NotFoundCopyWith(
          NotFound<T> value, $Res Function(NotFound<T>) then) =
      _$NotFoundCopyWithImpl<T, $Res>;
  @override
  $Res call({T notFoundValue, String message});
}

/// @nodoc
class _$NotFoundCopyWithImpl<T, $Res>
    extends _$GeneralFailureCopyWithImpl<T, $Res>
    implements $NotFoundCopyWith<T, $Res> {
  _$NotFoundCopyWithImpl(NotFound<T> _value, $Res Function(NotFound<T>) _then)
      : super(_value, (v) => _then(v as NotFound<T>));

  @override
  NotFound<T> get _value => super._value as NotFound<T>;

  @override
  $Res call({
    Object? notFoundValue = freezed,
    Object? message = freezed,
  }) {
    return _then(NotFound<T>(
      notFoundValue: notFoundValue == freezed
          ? _value.notFoundValue
          : notFoundValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFound<T> implements NotFound<T> {
  const _$NotFound({required this.notFoundValue, this.message = 'Not found'});

  @override
  final T notFoundValue;
  @JsonKey(defaultValue: 'Not found')
  @override
  final String message;

  @override
  String toString() {
    return 'GeneralFailure<$T>.notFound(notFoundValue: $notFoundValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NotFound<T> &&
            (identical(other.notFoundValue, notFoundValue) ||
                const DeepCollectionEquality()
                    .equals(other.notFoundValue, notFoundValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(notFoundValue) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $NotFoundCopyWith<T, NotFound<T>> get copyWith =>
      _$NotFoundCopyWithImpl<T, NotFound<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T notFoundValue, String message) notFound,
  }) {
    return notFound(notFoundValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T notFoundValue, String message)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(notFoundValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotFound<T> value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotFound<T> value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound<T> implements GeneralFailure<T> {
  const factory NotFound({required T notFoundValue, String message}) =
      _$NotFound<T>;

  @override
  T get notFoundValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $NotFoundCopyWith<T, NotFound<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
