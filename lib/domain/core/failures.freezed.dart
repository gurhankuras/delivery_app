// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  ExceedingLength<T> exceedingLength<T>(
      {required T failedValue,
      String message = 'Value is exceeds specified length',
      required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      message: message,
      max: max,
    );
  }

  Empty<T> empty<T>(
      {required T failedValue, String message = 'Value is empty'}) {
    return Empty<T>(
      failedValue: failedValue,
      message: message,
    );
  }

  InvalidFormat<T> invalidFormat<T>(
      {required T failedValue, String message = 'Invalid Format'}) {
    return InvalidFormat<T>(
      failedValue: failedValue,
      message: message,
    );
  }

  MustBeNCharacters<T> mustBeNCharacters<T>(
      {required T failedValue,
      String message = 'Must be N characters',
      required int n}) {
    return MustBeNCharacters<T>(
      failedValue: failedValue,
      message: message,
      n: n,
    );
  }

  Short<T> shortLength<T>(
      {required T failedValue,
      String message = 'Must be at least N characters long',
      required int min}) {
    return Short<T>(
      failedValue: failedValue,
      message: message,
      min: min,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue, String message});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String message, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength(
      {required this.failedValue,
      this.message = 'Value is exceeds specified length',
      required this.max});

  @override
  final T failedValue;
  @JsonKey(defaultValue: 'Value is exceeds specified length')
  @override
  final String message;
  @override
  final int max;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, message: $message, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(max);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) {
    return exceedingLength(failedValue, message, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, message, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength(
      {required T failedValue,
      String message,
      required int max}) = _$ExceedingLength<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String message});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue, this.message = 'Value is empty'});

  @override
  final T failedValue;
  @JsonKey(defaultValue: 'Value is empty')
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) {
    return empty(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failedValue, String message}) = _$Empty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidFormatCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidFormatCopyWith(
          InvalidFormat<T> value, $Res Function(InvalidFormat<T>) then) =
      _$InvalidFormatCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String message});
}

/// @nodoc
class _$InvalidFormatCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidFormatCopyWith<T, $Res> {
  _$InvalidFormatCopyWithImpl(
      InvalidFormat<T> _value, $Res Function(InvalidFormat<T>) _then)
      : super(_value, (v) => _then(v as InvalidFormat<T>));

  @override
  InvalidFormat<T> get _value => super._value as InvalidFormat<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
  }) {
    return _then(InvalidFormat<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidFormat<T> implements InvalidFormat<T> {
  const _$InvalidFormat(
      {required this.failedValue, this.message = 'Invalid Format'});

  @override
  final T failedValue;
  @JsonKey(defaultValue: 'Invalid Format')
  @override
  final String message;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidFormat(failedValue: $failedValue, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidFormat<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith =>
      _$InvalidFormatCopyWithImpl<T, InvalidFormat<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) {
    return invalidFormat(failedValue, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(failedValue, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) {
    return invalidFormat(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) {
    if (invalidFormat != null) {
      return invalidFormat(this);
    }
    return orElse();
  }
}

abstract class InvalidFormat<T> implements ValueFailure<T> {
  const factory InvalidFormat({required T failedValue, String message}) =
      _$InvalidFormat<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidFormatCopyWith<T, InvalidFormat<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustBeNCharactersCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MustBeNCharactersCopyWith(MustBeNCharacters<T> value,
          $Res Function(MustBeNCharacters<T>) then) =
      _$MustBeNCharactersCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String message, int n});
}

/// @nodoc
class _$MustBeNCharactersCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MustBeNCharactersCopyWith<T, $Res> {
  _$MustBeNCharactersCopyWithImpl(
      MustBeNCharacters<T> _value, $Res Function(MustBeNCharacters<T>) _then)
      : super(_value, (v) => _then(v as MustBeNCharacters<T>));

  @override
  MustBeNCharacters<T> get _value => super._value as MustBeNCharacters<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
    Object? n = freezed,
  }) {
    return _then(MustBeNCharacters<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      n: n == freezed
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MustBeNCharacters<T> implements MustBeNCharacters<T> {
  const _$MustBeNCharacters(
      {required this.failedValue,
      this.message = 'Must be N characters',
      required this.n});

  @override
  final T failedValue;
  @JsonKey(defaultValue: 'Must be N characters')
  @override
  final String message;
  @override
  final int n;

  @override
  String toString() {
    return 'ValueFailure<$T>.mustBeNCharacters(failedValue: $failedValue, message: $message, n: $n)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MustBeNCharacters<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.n, n) ||
                const DeepCollectionEquality().equals(other.n, n)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(n);

  @JsonKey(ignore: true)
  @override
  $MustBeNCharactersCopyWith<T, MustBeNCharacters<T>> get copyWith =>
      _$MustBeNCharactersCopyWithImpl<T, MustBeNCharacters<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) {
    return mustBeNCharacters(failedValue, message, n);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) {
    if (mustBeNCharacters != null) {
      return mustBeNCharacters(failedValue, message, n);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) {
    return mustBeNCharacters(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) {
    if (mustBeNCharacters != null) {
      return mustBeNCharacters(this);
    }
    return orElse();
  }
}

abstract class MustBeNCharacters<T> implements ValueFailure<T> {
  const factory MustBeNCharacters(
      {required T failedValue,
      String message,
      required int n}) = _$MustBeNCharacters<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  int get n => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MustBeNCharactersCopyWith<T, MustBeNCharacters<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortCopyWith(Short<T> value, $Res Function(Short<T>) then) =
      _$ShortCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, String message, int min});
}

/// @nodoc
class _$ShortCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortCopyWith<T, $Res> {
  _$ShortCopyWithImpl(Short<T> _value, $Res Function(Short<T>) _then)
      : super(_value, (v) => _then(v as Short<T>));

  @override
  Short<T> get _value => super._value as Short<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? message = freezed,
    Object? min = freezed,
  }) {
    return _then(Short<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Short<T> implements Short<T> {
  const _$Short(
      {required this.failedValue,
      this.message = 'Must be at least N characters long',
      required this.min});

  @override
  final T failedValue;
  @JsonKey(defaultValue: 'Must be at least N characters long')
  @override
  final String message;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortLength(failedValue: $failedValue, message: $message, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Short<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failedValue) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(min);

  @JsonKey(ignore: true)
  @override
  $ShortCopyWith<T, Short<T>> get copyWith =>
      _$ShortCopyWithImpl<T, Short<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, String message, int max)
        exceedingLength,
    required TResult Function(T failedValue, String message) empty,
    required TResult Function(T failedValue, String message) invalidFormat,
    required TResult Function(T failedValue, String message, int n)
        mustBeNCharacters,
    required TResult Function(T failedValue, String message, int min)
        shortLength,
  }) {
    return shortLength(failedValue, message, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, String message, int max)? exceedingLength,
    TResult Function(T failedValue, String message)? empty,
    TResult Function(T failedValue, String message)? invalidFormat,
    TResult Function(T failedValue, String message, int n)? mustBeNCharacters,
    TResult Function(T failedValue, String message, int min)? shortLength,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(failedValue, message, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidFormat<T> value) invalidFormat,
    required TResult Function(MustBeNCharacters<T> value) mustBeNCharacters,
    required TResult Function(Short<T> value) shortLength,
  }) {
    return shortLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidFormat<T> value)? invalidFormat,
    TResult Function(MustBeNCharacters<T> value)? mustBeNCharacters,
    TResult Function(Short<T> value)? shortLength,
    required TResult orElse(),
  }) {
    if (shortLength != null) {
      return shortLength(this);
    }
    return orElse();
  }
}

abstract class Short<T> implements ValueFailure<T> {
  const factory Short(
      {required T failedValue, String message, required int min}) = _$Short<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortCopyWith<T, Short<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
