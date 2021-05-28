import 'package:json_annotation/json_annotation.dart';

part 'order_status.g.dart';

@JsonSerializable()
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

  factory OrderStatus.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusFromJson(json);
  Map<String, dynamic> toJson() => _$OrderStatusToJson(this);
}
