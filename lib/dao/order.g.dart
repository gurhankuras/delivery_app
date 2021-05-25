// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) {
  return Order(
    orderId: json['orderId'] as String?,
    senderName: json['senderName'] as String?,
    senderPhoneNumber: json['senderPhoneNumber'] as String?,
    senderAddress: json['senderAddress'] as String?,
    receiverName: json['receiverName'] as String?,
    receiverPhoneNumber: json['receiverPhoneNumber'] as String?,
    receiverAddress: json['receiverAddress'] as String?,
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
      'senderName': instance.senderName,
      'senderPhoneNumber': instance.senderPhoneNumber,
      'senderAddress': instance.senderAddress,
      'receiverName': instance.receiverName,
      'receiverPhoneNumber': instance.receiverPhoneNumber,
      'receiverAddress': instance.receiverAddress,
      'orderStates': instance.orderStates,
      'packageName': instance.packageName,
      'packageCategory': instance.packageCategory,
      'packageType': instance.packageType,
      'weight': instance.weight,
      'vehicleType': instance.vehicleType,
    };
