import 'package:json_annotation/json_annotation.dart';

import 'order_status.dart';
import 'person.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  String? orderId;

  Person? sender;
  Person? receiver;

  List<OrderStatus>? orderStates;

  String? packageName;
  String? packageCategory;
  String? packageType;
  double? weight;
  String? vehicleType;

  Order({
    this.orderId,
    this.sender,
    this.receiver,
    this.orderStates,
    this.packageName,
    this.packageCategory,
    this.packageType,
    this.weight,
    this.vehicleType,
  });

  Order.empty() {
    orderId = '';
    sender = Person(address: '', name: '', phoneNumber: '', trId: '');
    receiver = Person(address: '', name: '', phoneNumber: '', trId: '');
    orderStates = [];
    packageName = '';
    packageCategory = '';
    packageType = '';
    weight = 0;
    vehicleType = '';
  }

  static Order fake() {
    return mockOrder;
  }

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
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
    sender: Person(
      name: 'Arvin Aradhana',
      phoneNumber: '+62 812 332 021',
      address: '3117 Doctors Drive, LA, California',
      trId: '21484486692',
    ),
    receiver: Person(
      name: 'Eric Cartman',
      phoneNumber: '+62 310 341 303',
      address: '4123 Big Green, LA, California',
      trId: '21234634575',
    ),
    packageName: 'iPhone 11 Pro 256 GB',
    vehicleType: 'Motorcycle',
    weight: 1,
    orderStates: _mockOrderStates,
    packageType: 'Bundle');
