// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderDTO _$_$_OrderDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderDTO(
    orderId: json['orderId'] as String?,
    sender: json['sender'] == null
        ? null
        : PersonDTO.fromJson(json['sender'] as Map<String, dynamic>),
    receiver: json['receiver'] == null
        ? null
        : PersonDTO.fromJson(json['receiver'] as Map<String, dynamic>),
    orderStates: (json['orderStates'] as List<dynamic>?)
        ?.map((e) => OrderStatusDTO.fromJson(e as Map<String, dynamic>))
        .toList(),
    packageName: json['packageName'] as String?,
    packageCategory: json['packageCategory'] as String?,
    packageType: json['packageType'] as String?,
    weight: (json['weight'] as num?)?.toDouble(),
    vehicleType: json['vehicleType'] as String?,
  );
}

Map<String, dynamic> _$_$_OrderDTOToJson(_$_OrderDTO instance) =>
    <String, dynamic>{
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

_$_PersonDTO _$_$_PersonDTOFromJson(Map<String, dynamic> json) {
  return _$_PersonDTO(
    name: json['name'] as String?,
    phoneNumber: json['phoneNumber'] as String?,
    trId: json['trId'] as String?,
    address: json['address'] as String?,
  );
}

Map<String, dynamic> _$_$_PersonDTOToJson(_$_PersonDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'trId': instance.trId,
      'address': instance.address,
    };

_$_TrackIdDTO _$_$_TrackIdDTOFromJson(Map<String, dynamic> json) {
  return _$_TrackIdDTO(
    value: json['value'] as String?,
  );
}

Map<String, dynamic> _$_$_TrackIdDTOToJson(_$_TrackIdDTO instance) =>
    <String, dynamic>{
      'value': instance.value,
    };

_$_OrderStatusDTO _$_$_OrderStatusDTOFromJson(Map<String, dynamic> json) {
  return _$_OrderStatusDTO(
    event: json['event'] as String?,
    timeStamp: json['timeStamp'] as String?,
    status: json['status'] as int?,
  );
}

Map<String, dynamic> _$_$_OrderStatusDTOToJson(_$_OrderStatusDTO instance) =>
    <String, dynamic>{
      'event': instance.event,
      'timeStamp': instance.timeStamp,
      'status': instance.status,
    };
