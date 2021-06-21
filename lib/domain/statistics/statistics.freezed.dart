// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$StatisticsTearOff {
  const _$StatisticsTearOff();

  _Statistics call(
      {List<String> labels = const [], List<num> values = const []}) {
    return _Statistics(
      labels: labels,
      values: values,
    );
  }
}

/// @nodoc
const $Statistics = _$StatisticsTearOff();

/// @nodoc
mixin _$Statistics {
  List<String> get labels => throw _privateConstructorUsedError;
  List<num> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call({List<String> labels, List<num> values});
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object? labels = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
abstract class _$StatisticsCopyWith<$Res> implements $StatisticsCopyWith<$Res> {
  factory _$StatisticsCopyWith(
          _Statistics value, $Res Function(_Statistics) then) =
      __$StatisticsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> labels, List<num> values});
}

/// @nodoc
class __$StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$StatisticsCopyWith<$Res> {
  __$StatisticsCopyWithImpl(
      _Statistics _value, $Res Function(_Statistics) _then)
      : super(_value, (v) => _then(v as _Statistics));

  @override
  _Statistics get _value => super._value as _Statistics;

  @override
  $Res call({
    Object? labels = freezed,
    Object? values = freezed,
  }) {
    return _then(_Statistics(
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc

class _$_Statistics extends _Statistics {
  _$_Statistics({this.labels = const [], this.values = const []}) : super._();

  @JsonKey(defaultValue: const [])
  @override
  final List<String> labels;
  @JsonKey(defaultValue: const [])
  @override
  final List<num> values;

  @override
  String toString() {
    return 'Statistics(labels: $labels, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Statistics &&
            (identical(other.labels, labels) ||
                const DeepCollectionEquality().equals(other.labels, labels)) &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(labels) ^
      const DeepCollectionEquality().hash(values);

  @JsonKey(ignore: true)
  @override
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      __$StatisticsCopyWithImpl<_Statistics>(this, _$identity);
}

abstract class _Statistics extends Statistics {
  factory _Statistics({List<String> labels, List<num> values}) = _$_Statistics;
  _Statistics._() : super._();

  @override
  List<String> get labels => throw _privateConstructorUsedError;
  @override
  List<num> get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}
