// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatisticsDTO _$_$_StatisticsDTOFromJson(Map<String, dynamic> json) {
  return _$_StatisticsDTO(
    labels:
        (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList(),
    values: (json['values'] as List<dynamic>?)?.map((e) => e as num).toList(),
  );
}

Map<String, dynamic> _$_$_StatisticsDTOToJson(_$_StatisticsDTO instance) =>
    <String, dynamic>{
      'labels': instance.labels,
      'values': instance.values,
    };
