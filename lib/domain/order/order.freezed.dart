// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderTearOff {
  const _$OrderTearOff();

  _Order call(
      {String? orderId,
      Person? sender,
      Person? receiver,
      List<OrderStatus>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType}) {
    return _Order(
      orderId: orderId,
      sender: sender,
      receiver: receiver,
      orderStates: orderStates,
      packageName: packageName,
      packageCategory: packageCategory,
      packageType: packageType,
      weight: weight,
      vehicleType: vehicleType,
    );
  }
}

/// @nodoc
const $Order = _$OrderTearOff();

/// @nodoc
mixin _$Order {
  String? get orderId => throw _privateConstructorUsedError;
  Person? get sender => throw _privateConstructorUsedError;
  Person? get receiver => throw _privateConstructorUsedError;
  List<OrderStatus>? get orderStates => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  String? get packageCategory => throw _privateConstructorUsedError;
  String? get packageType => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get vehicleType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res>;
  $Res call(
      {String? orderId,
      Person? sender,
      Person? receiver,
      List<OrderStatus>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res> implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  final Order _value;
  // ignore: unused_field
  final $Res Function(Order) _then;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? orderStates = freezed,
    Object? packageName = freezed,
    Object? packageCategory = freezed,
    Object? packageType = freezed,
    Object? weight = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_value.copyWith(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Person?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Person?,
      orderStates: orderStates == freezed
          ? _value.orderStates
          : orderStates // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>?,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCategory: packageCategory == freezed
          ? _value.packageCategory
          : packageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: packageType == freezed
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OrderCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$OrderCopyWith(_Order value, $Res Function(_Order) then) =
      __$OrderCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? orderId,
      Person? sender,
      Person? receiver,
      List<OrderStatus>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType});
}

/// @nodoc
class __$OrderCopyWithImpl<$Res> extends _$OrderCopyWithImpl<$Res>
    implements _$OrderCopyWith<$Res> {
  __$OrderCopyWithImpl(_Order _value, $Res Function(_Order) _then)
      : super(_value, (v) => _then(v as _Order));

  @override
  _Order get _value => super._value as _Order;

  @override
  $Res call({
    Object? orderId = freezed,
    Object? sender = freezed,
    Object? receiver = freezed,
    Object? orderStates = freezed,
    Object? packageName = freezed,
    Object? packageCategory = freezed,
    Object? packageType = freezed,
    Object? weight = freezed,
    Object? vehicleType = freezed,
  }) {
    return _then(_Order(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Person?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as Person?,
      orderStates: orderStates == freezed
          ? _value.orderStates
          : orderStates // ignore: cast_nullable_to_non_nullable
              as List<OrderStatus>?,
      packageName: packageName == freezed
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCategory: packageCategory == freezed
          ? _value.packageCategory
          : packageCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: packageType == freezed
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      vehicleType: vehicleType == freezed
          ? _value.vehicleType
          : vehicleType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Order extends _Order {
  _$_Order(
      {this.orderId,
      this.sender,
      this.receiver,
      this.orderStates,
      this.packageName,
      this.packageCategory,
      this.packageType,
      this.weight,
      this.vehicleType})
      : super._();

  @override
  final String? orderId;
  @override
  final Person? sender;
  @override
  final Person? receiver;
  @override
  final List<OrderStatus>? orderStates;
  @override
  final String? packageName;
  @override
  final String? packageCategory;
  @override
  final String? packageType;
  @override
  final double? weight;
  @override
  final String? vehicleType;

  @override
  String toString() {
    return 'Order(orderId: $orderId, sender: $sender, receiver: $receiver, orderStates: $orderStates, packageName: $packageName, packageCategory: $packageCategory, packageType: $packageType, weight: $weight, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Order &&
            (identical(other.orderId, orderId) ||
                const DeepCollectionEquality()
                    .equals(other.orderId, orderId)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.receiver, receiver) ||
                const DeepCollectionEquality()
                    .equals(other.receiver, receiver)) &&
            (identical(other.orderStates, orderStates) ||
                const DeepCollectionEquality()
                    .equals(other.orderStates, orderStates)) &&
            (identical(other.packageName, packageName) ||
                const DeepCollectionEquality()
                    .equals(other.packageName, packageName)) &&
            (identical(other.packageCategory, packageCategory) ||
                const DeepCollectionEquality()
                    .equals(other.packageCategory, packageCategory)) &&
            (identical(other.packageType, packageType) ||
                const DeepCollectionEquality()
                    .equals(other.packageType, packageType)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.vehicleType, vehicleType) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleType, vehicleType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(orderId) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(receiver) ^
      const DeepCollectionEquality().hash(orderStates) ^
      const DeepCollectionEquality().hash(packageName) ^
      const DeepCollectionEquality().hash(packageCategory) ^
      const DeepCollectionEquality().hash(packageType) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(vehicleType);

  @JsonKey(ignore: true)
  @override
  _$OrderCopyWith<_Order> get copyWith =>
      __$OrderCopyWithImpl<_Order>(this, _$identity);
}

abstract class _Order extends Order {
  factory _Order(
      {String? orderId,
      Person? sender,
      Person? receiver,
      List<OrderStatus>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType}) = _$_Order;
  _Order._() : super._();

  @override
  String? get orderId => throw _privateConstructorUsedError;
  @override
  Person? get sender => throw _privateConstructorUsedError;
  @override
  Person? get receiver => throw _privateConstructorUsedError;
  @override
  List<OrderStatus>? get orderStates => throw _privateConstructorUsedError;
  @override
  String? get packageName => throw _privateConstructorUsedError;
  @override
  String? get packageCategory => throw _privateConstructorUsedError;
  @override
  String? get packageType => throw _privateConstructorUsedError;
  @override
  double? get weight => throw _privateConstructorUsedError;
  @override
  String? get vehicleType => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderCopyWith<_Order> get copyWith => throw _privateConstructorUsedError;
}
