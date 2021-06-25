import '../../domain/order/order.dart';
import '../../domain/order/value_objects.dart';

class OrderAssembler {
  Order assemble({
    required Person sender,
    required Person receiver,
    required PackageInfo packageInfo,
  }) {
    return Order(
      orderStates: [],
      packageCategory: packageInfo.packageCategory,
      packageName: packageInfo.packageName,
      packageType: packageInfo.packageType,
      sender: sender,
      receiver: receiver,
      vehicleType: 'Moto',
      weight: 1.0,
    );
  }
}

class PackageInfo {
  String packageType;
  String packageCategory;
  String packageName;

  PackageInfo({
    required this.packageType,
    required this.packageCategory,
    required this.packageName,
  });

  factory PackageInfo.empty() => PackageInfo(
        packageType: 'Electronics',
        packageCategory: 'Document',
        packageName: '',
      );

  PackageInfo copyWith({
    String? packageType,
    String? packageCategory,
    String? packageName,
  }) {
    return PackageInfo(
      packageType: packageType ?? this.packageType,
      packageCategory: packageCategory ?? this.packageCategory,
      packageName: packageName ?? this.packageName,
    );
  }

  @override
  String toString() =>
      'PackageInfo(packageType: $packageType, packageCategory: $packageCategory, packageName: $packageName)';
}
