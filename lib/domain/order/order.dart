import 'value_objects.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'order.g.dart';
part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const Order._();
  factory Order({
    String? orderId,
    Person? sender,
    Person? receiver,
    List<OrderStatus>? orderStates,
    String? packageName,
    String? packageCategory,
    String? packageType,
    double? weight,
    String? vehicleType,
  }) = _Order;

  factory Order.empty() => Order(
        orderId: '',
        sender: Person.empty(),
        receiver: Person.empty(),
        orderStates: [],
        packageName: '',
        packageCategory: '',
        packageType: '',
        weight: 0,
        vehicleType: '',
      );
}
