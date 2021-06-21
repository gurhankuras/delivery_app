// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'statistics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatisticsDTO _$StatisticsDTOFromJson(Map<String, dynamic> json) {
  return _StatisticsDTO.fromJson(json);
}

/// @nodoc
class _$StatisticsDTOTearOff {
  const _$StatisticsDTOTearOff();

  _StatisticsDTO call(
      {required List<String>? labels, required List<num>? values}) {
    return _StatisticsDTO(
      labels: labels,
      values: values,
    );
  }

  StatisticsDTO fromJson(Map<String, Object> json) {
    return StatisticsDTO.fromJson(json);
  }
}

/// @nodoc
const $StatisticsDTO = _$StatisticsDTOTearOff();

/// @nodoc
mixin _$StatisticsDTO {
  List<String>? get labels => throw _privateConstructorUsedError;
  List<num>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsDTOCopyWith<StatisticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsDTOCopyWith<$Res> {
  factory $StatisticsDTOCopyWith(
          StatisticsDTO value, $Res Function(StatisticsDTO) then) =
      _$StatisticsDTOCopyWithImpl<$Res>;
  $Res call({List<String>? labels, List<num>? values});
}

/// @nodoc
class _$StatisticsDTOCopyWithImpl<$Res>
    implements $StatisticsDTOCopyWith<$Res> {
  _$StatisticsDTOCopyWithImpl(this._value, this._then);

  final StatisticsDTO _value;
  // ignore: unused_field
  final $Res Function(StatisticsDTO) _then;

  @override
  $Res call({
    Object? labels = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
abstract class _$StatisticsDTOCopyWith<$Res>
    implements $StatisticsDTOCopyWith<$Res> {
  factory _$StatisticsDTOCopyWith(
          _StatisticsDTO value, $Res Function(_StatisticsDTO) then) =
      __$StatisticsDTOCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? labels, List<num>? values});
}

/// @nodoc
class __$StatisticsDTOCopyWithImpl<$Res>
    extends _$StatisticsDTOCopyWithImpl<$Res>
    implements _$StatisticsDTOCopyWith<$Res> {
  __$StatisticsDTOCopyWithImpl(
      _StatisticsDTO _value, $Res Function(_StatisticsDTO) _then)
      : super(_value, (v) => _then(v as _StatisticsDTO));

  @override
  _StatisticsDTO get _value => super._value as _StatisticsDTO;

  @override
  $Res call({
    Object? labels = freezed,
    Object? values = freezed,
  }) {
    return _then(_StatisticsDTO(
      labels: labels == freezed
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<num>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatisticsDTO extends _StatisticsDTO {
  _$_StatisticsDTO({required this.labels, required this.values}) : super._();

  factory _$_StatisticsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StatisticsDTOFromJson(json);

  @override
  final List<String>? labels;
  @override
  final List<num>? values;

  @override
  String toString() {
    return 'StatisticsDTO(labels: $labels, values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatisticsDTO &&
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
  _$StatisticsDTOCopyWith<_StatisticsDTO> get copyWith =>
      __$StatisticsDTOCopyWithImpl<_StatisticsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatisticsDTOToJson(this);
  }
}

abstract class _StatisticsDTO extends StatisticsDTO {
  factory _StatisticsDTO(
      {required List<String>? labels,
      required List<num>? values}) = _$_StatisticsDTO;
  _StatisticsDTO._() : super._();

  factory _StatisticsDTO.fromJson(Map<String, dynamic> json) =
      _$_StatisticsDTO.fromJson;

  @override
  List<String>? get labels => throw _privateConstructorUsedError;
  @override
  List<num>? get values => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatisticsDTOCopyWith<_StatisticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
