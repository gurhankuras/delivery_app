// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderStatus _$OrderStatusFromJson(Map<String, dynamic> json) {
  return OrderStatus(
    event: json['event'] as String?,
    timeStamp: json['timeStamp'] == null
        ? null
        : DateTime.parse(json['timeStamp'] as String),
    status: json['status'] as int?,
  );
}

Map<String, dynamic> _$OrderStatusToJson(OrderStatus instance) =>
    <String, dynamic>{
      'event': instance.event,
      'timeStamp': instance.timeStamp?.toIso8601String(),
      'status': instance.status,
    };
