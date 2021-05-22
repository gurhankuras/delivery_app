class Order {
  String orderId;

  String senderName;
  String senderPhoneNumber;
  String senderAddress;

  String recipientName;
  String recipientPhoneNumber;
  String recipientAddress;

  String packageName;
  String packageCategory;
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
    required this.packageName,
    required this.packageCategory,
    required this.weight,
    required this.vehicleType,
  });
}

final mockOrder = Order(
  orderId: "249 316 28C",
  packageCategory: "Electronics",
  senderName: "Arvin Aradhana",
  senderPhoneNumber: "+62 812 332 021",
  senderAddress: "3117 Doctors Drive, LA, California",
  recipientName: "Eric Cartman",
  recipientPhoneNumber: "+62 310 341 303",
  recipientAddress: "4123 Big Green, LA, California",
  packageName: "iPhone 11 Pro 256 GB",
  vehicleType: "Motorcycle",
  weight: 1,
);
