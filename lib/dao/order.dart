import 'package:json_annotation/json_annotation.dart';

import 'order_status.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  String? orderId;

  String? senderName;
  String? senderPhoneNumber;
  String? senderAddress;

  String? receiverName;
  String? receiverPhoneNumber;
  String? receiverAddress;

  List<OrderStatus>? orderStates;

  String? packageName;
  String? packageCategory;
  String? packageType;
  double? weight;
  String? vehicleType;

  Order({
    this.orderId,
    this.senderName,
    this.senderPhoneNumber,
    this.senderAddress,
    this.receiverName,
    this.receiverPhoneNumber,
    this.receiverAddress,
    this.orderStates,
    this.packageName,
    this.packageCategory,
    this.packageType,
    this.weight,
    this.vehicleType,
  });

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
  Order.empty();
}

final _mockOrderStates = <OrderStatus>[
  OrderStatus(
    event: 'Courier has accepted order request',
    timeStamp: DateTime.now(),
  ),
  OrderStatus(
    event: 'Package picked up by courier',
    timeStamp: DateTime.now(),
  ),
  OrderStatus(
    event: 'Package delivered to destination',
    timeStamp: DateTime.now(),
  ),
  OrderStatus(
    event: 'Order completed',
    timeStamp: DateTime.now(),
  ),
];

final mockOrder = Order(
    orderId: '249 316 28C',
    packageCategory: 'Electronics',
    senderName: 'Arvin Aradhana',
    senderPhoneNumber: '+62 812 332 021',
    senderAddress: '3117 Doctors Drive, LA, California',
    receiverName: 'Eric Cartman',
    receiverPhoneNumber: '+62 310 341 303',
    receiverAddress: '4123 Big Green, LA, California',
    packageName: 'iPhone 11 Pro 256 GB',
    vehicleType: 'Motorcycle',
    weight: 1,
    orderStates: _mockOrderStates,
    packageType: 'Bundle');
