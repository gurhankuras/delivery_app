import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/statistics/statistics.dart';

part 'statistics_dto.freezed.dart';
part 'statistics_dto.g.dart';

@freezed
class StatisticsDTO with _$StatisticsDTO {
  const StatisticsDTO._();
  factory StatisticsDTO({
    required List<String>? labels,
    required List<num>? values,
  }) = _StatisticsDTO;

  factory StatisticsDTO.fromDomain(Statistics statistics) => StatisticsDTO(
        labels: statistics.labels,
        values: statistics.values,
      );

  Statistics toDomain() => Statistics(
        labels: labels ?? [],
        values: values ?? [],
      );

// TODO: find a better way
  factory StatisticsDTO.fromJson(Map<String, dynamic> json) =>
      StatisticsDTOConverter().fromJson(json);

  @override
  Map<String, dynamic> toJson() => StatisticsDTOConverter().toJson(this);
}

class StatisticsDTOConverter
    implements JsonConverter<StatisticsDTO, Map<String, dynamic>> {
  const StatisticsDTOConverter();

  @override
  StatisticsDTO fromJson(Map<String, dynamic> json) {
    return StatisticsDTO(
      labels: json.keys.toList(),
      values: json.values.map<num>((e) => e).toList(),
    );
  }

  @override
  Map<String, dynamic> toJson(StatisticsDTO data) {
    if (data.labels == null || data.values == null) return {};
    return Map.fromIterables(data.labels!, data.values!);
  }
}
