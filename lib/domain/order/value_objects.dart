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

  // factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  // Map<String, dynamic> toJson() => _$PersonToJson(this);
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
