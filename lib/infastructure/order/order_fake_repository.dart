import 'package:delivery_app/domain/order/i_order_repository.dart';
import 'package:delivery_app/domain/order/order.dart';
import 'package:delivery_app/domain/order/value_objects.dart';

class OrderFakeRepository implements IOrderRepository {
  final mockOrders = <Order>[mockOrder];

  @override
  Future<String?> create(Order order) async {
    mockOrders.add(order);
    return Future.value('asdasdasd');
  }

  @override
  Future<Order?> getOne(String id) async {
    final foundOrder = mockOrders.firstWhere((order) => order.orderId == id);
    return Future.value(foundOrder);
  }

  @override
  Future<void> update(Order order) async {
    final index = mockOrders
        .indexWhere((listOrder) => listOrder.orderId == order.orderId);
    if (index == -1) return;
    mockOrders[index] = order;
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
  packageType: 'Bundle',
);
