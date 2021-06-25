import 'package:dartz/dartz.dart' hide Order;

import '../../domain/core/failures.dart';
import '../../domain/order/i_order_repository.dart';
import '../../domain/order/order.dart';
import '../../domain/order/value_objects.dart';

class OrderFakeRepository implements IOrderRepository {
  final mockOrders = <Order>[mockOrder];

  void f() {}

  @override
  Future<Either<ValueFailure<String>, Unit>> create(Order order) async {
    await Future.delayed(Duration(seconds: 2));

    mockOrders.add(order);
    return Future.value(right(unit));
  }

  @override
  Future<Either<ValueFailure<String>, Order>> getOne(String id) async {
    await Future.delayed(Duration(seconds: 2));

    final index = mockOrders.indexWhere((order) => order.orderId == id);
    if (index == -1) {
      return Future.value(left(ValueFailure.empty(failedValue: '')));
    }
    return Future.value(right(mockOrders[index]));
  }

  @override
  Future<Either<ValueFailure<String>, Unit>> update(Order order) async {
    await Future.delayed(Duration(seconds: 2));
    final index = mockOrders
        .indexWhere((listOrder) => listOrder.orderId == order.orderId);
    if (index == -1) {
      return Future.value(left(ValueFailure.empty(failedValue: '')));
    }
    mockOrders[index] = order;
    return Future.value(right(unit));
  }
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
  orderId: '1234567890',
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
  packageType: 'Bundle',
);
