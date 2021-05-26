// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    orderId: json['orderId'] as String?,
    sender: json['sender'] == null
        ? null
        : Person.fromJson(json['sender'] as Map<String, dynamic>),
    receiver: json['receiver'] == null
        ? null
        : Person.fromJson(json['receiver'] as Map<String, dynamic>),
    orderStates: (json['orderStates'] as List<dynamic>?)
        ?.map((e) => OrderStatus.fromJson(e as Map<String, dynamic>))
        .toList(),
    packageName: json['packageName'] as String?,
    packageCategory: json['packageCategory'] as String?,
    packageType: json['packageType'] as String?,
    weight: (json['weight'] as num?)?.toDouble(),
    vehicleType: json['vehicleType'] as String?,
  );
}

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'orderId': instance.orderId,
      'sender': instance.sender,
      'receiver': instance.receiver,
      'orderStates': instance.orderStates,
      'packageName': instance.packageName,
      'packageCategory': instance.packageCategory,
      'packageType': instance.packageType,
      'weight': instance.weight,
      'vehicleType': instance.vehicleType,
    };
