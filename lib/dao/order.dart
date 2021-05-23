class Order {
  String orderId;

  String senderName;
  String senderPhoneNumber;
  String senderAddress;

  String recipientName;
  String recipientPhoneNumber;
  String recipientAddress;

  List<OrderStatus> orderStates;

  String packageName;
  String packageCategory;
  String packageType;
  double weight;
  String vehicleType;

  Order({
    required this.orderId,
    required this.senderName,
    required this.senderPhoneNumber,
    required this.senderAddress,
    required this.recipientName,
    required this.recipientPhoneNumber,
    required this.recipientAddress,
    required this.orderStates,
    required this.packageName,
    required this.packageCategory,
    required this.packageType,
    required this.weight,
    required this.vehicleType,
  });
}

class OrderStatus {
  String event;
  DateTime timeStamp;
  OrderStatus({
    required this.event,
    required this.timeStamp,
  });
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
    recipientName: 'Eric Cartman',
    recipientPhoneNumber: '+62 310 341 303',
    recipientAddress: '4123 Big Green, LA, California',
    packageName: 'iPhone 11 Pro 256 GB',
    vehicleType: 'Motorcycle',
    weight: 1,
    orderStates: _mockOrderStates,
    packageType: 'Bundle');
