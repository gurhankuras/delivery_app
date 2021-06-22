import 'dart:convert';

import 'package:delivery_app/domain/core/json_serializable.dart';

class Person {
  String? name;
  String? phoneNumber;
  String? trId;
  String? address;

  Person({
    required this.name,
    required this.phoneNumber,
    required this.trId,
    required this.address,
  });

  factory Person.empty() => Person(
        name: '',
        phoneNumber: '',
        trId: '',
        address: '',
      );

  Person copyWith({
    String? name,
    String? phoneNumber,
    String? trId,
    String? address,
  }) {
    return Person(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      trId: trId ?? this.trId,
      address: address ?? this.address,
    );
  }

  @override
  String toString() {
    return 'Person(name: $name, phoneNumber: $phoneNumber, trId: $trId, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Person &&
        other.name == name &&
        other.phoneNumber == phoneNumber &&
        other.trId == trId &&
        other.address == address;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        phoneNumber.hashCode ^
        trId.hashCode ^
        address.hashCode;
  }
}

class TrackId implements GJsonSerializable<TrackId> {
  final String? value;

  TrackId({this.value});

  @override
  TrackId fromJson(Map<String, dynamic> json) => TrackId(value: json['value']);

  @override
  Map<String, dynamic> toJson() {
    return {'value': value};
  }
}

class OrderStatus {
  String? event;
  DateTime? timeStamp;
  int? status;

  OrderStatus({
    this.event,
    this.timeStamp,
    this.status,
  });

  bool operator <(OrderStatus other) {
    return status! < other.status!;
  }

  // factory OrderStatus.fromJson(Map<String, dynamic> json) =>
  //     _$OrderStatusFromJson(json);
  // Map<String, dynamic> toJson() => _$OrderStatusToJson(this);
}
