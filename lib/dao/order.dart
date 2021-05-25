import '../base/json_serializable.dart';

class Order implements GJsonSerializable<Order> {
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

  Order.empty();

  @override
  Order fromJson(Map<String, dynamic> json) {
    final orderStatesJson = json['orderStates'];

    var orderStateList;
    if (orderStatesJson is List<Map<String, dynamic>>) {
      final model = OrderStatus();
      orderStateList = orderStatesJson
          .map((orderStateMap) => model.fromJson(orderStateMap))
          .toList();
    }

    return Order(
      orderId: json['orderId'],
      senderName: json['senderName'],
      senderAddress: json['senderAddress'],
      senderPhoneNumber: json['senderPhoneNumber'],
      receiverName: json['receiverName'],
      receiverAddress: json['receiverAddress'],
      receiverPhoneNumber: json['receiverPhoneNumber'],
      packageName: json['packageName'],
      packageCategory: json['packageCategory'],
      packageType: json['packageType'],
      weight: json['weight'],
      vehicleType: json['vehicleType'],
      orderStates: orderStateList,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['orderId'] = orderId;
    data['senderName'] = senderName;
    data['senderPhone'] = senderPhoneNumber;
    data['senderAddress'] = senderAddress;
    data['receiverName'] = receiverName;
    data['receiverPhone'] = receiverPhoneNumber;
    data['receiverAddress'] = receiverAddress;
    data['packageName'] = packageName;
    data['packageCategory'] = packageCategory;
    data['packageType'] = packageType;
    data['weight'] = weight;
    data['vehicleType'] = vehicleType;
    data['orderStates'] = orderStates?.map((state) => state.toJson());
    return data;
  }
}

class OrderStatus implements GJsonSerializable<OrderStatus> {
  String? event;
  DateTime? timeStamp;

  OrderStatus({this.event, this.timeStamp});

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['event'] = event;
    data['timeStamp'] = timeStamp?.toIso8601String();
    return data;
  }

  @override
  OrderStatus fromJson(Map<String, dynamic> json) => OrderStatus(
        event: json['event'],
        timeStamp: DateTime.parse(json['timeStamp']),
      );
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
