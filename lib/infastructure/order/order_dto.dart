import '../../domain/order/order.dart';
import '../../domain/order/value_objects.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_dto.g.dart';
part 'order_dto.freezed.dart';

@freezed
class OrderDTO with _$OrderDTO {
  const OrderDTO._();
  factory OrderDTO({
    String? orderId,
    PersonDTO? sender,
    PersonDTO? receiver,
    @JsonKey(name: 'states') List<OrderStatusDTO>? orderStates,
    String? packageName,
    String? packageCategory,
    String? packageType,
    double? weight,
    String? vehicleType,
  }) = _OrderDTO;

  factory OrderDTO.fromDomain(Order order) => OrderDTO(
        orderId: order.orderId,
        orderStates: order.orderStates
            ?.map((orderStatus) => OrderStatusDTO.fromDomain(orderStatus))
            .toList(),
        sender: PersonDTO.fromDomain(order.sender!),
        receiver: PersonDTO.fromDomain(order.receiver!),
        packageCategory: order.packageCategory,
        packageName: order.packageName,
        packageType: order.packageType,
        vehicleType: order.vehicleType,
        weight: order.weight,
      );

  Order toDomain() => Order(
        orderId: orderId,
        orderStates: orderStates
            ?.map((orderStateDTO) => orderStateDTO.toDomain())
            .toList(),
        packageCategory: packageCategory,
        packageName: packageName,
        packageType: packageType,
        receiver: receiver?.toDomain(),
        sender: sender?.toDomain(),
        vehicleType: vehicleType,
        weight: weight,
      );

  factory OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderDTOFromJson(json);
}

@freezed
class PersonDTO with _$PersonDTO {
  const PersonDTO._();

  factory PersonDTO({
    String? name,
    String? phoneNumber,
    String? trId,
    String? address,
  }) = _PersonDTO;

  factory PersonDTO.fromDomain(Person person) => PersonDTO(
        address: person.address,
        name: person.address,
        phoneNumber: person.phoneNumber,
        trId: person.trId,
      );

  Person toDomain() => Person(
        phoneNumber: phoneNumber ?? '',
        trId: trId ?? '',
        address: address ?? '',
        name: name ?? '',
      );

  factory PersonDTO.fromJson(Map<String, dynamic> json) =>
      _$PersonDTOFromJson(json);
}

@freezed
class TrackIdDTO with _$TrackIdDTO {
  const TrackIdDTO._();

  factory TrackIdDTO({String? value}) = _TrackIdDTO;
  factory TrackIdDTO.fromJson(Map<String, dynamic> json) =>
      _$TrackIdDTOFromJson(json);
  factory TrackIdDTO.fromDomain(TrackId trackId) =>
      TrackIdDTO(value: trackId.value);

  TrackId toDomain() => TrackId(
        value: value,
      );
}

@freezed
class OrderStatusDTO with _$OrderStatusDTO {
  const OrderStatusDTO._();

  factory OrderStatusDTO({
    String? event,
    String? timeStamp,
    int? status,
  }) = _OrderStatusDTO;

  bool operator <(OrderStatusDTO other) {
    return status! < other.status!;
  }

  factory OrderStatusDTO.fromDomain(OrderStatus status) => OrderStatusDTO(
        event: status.event,
        status: status.status,
        timeStamp: status.timeStamp?.toIso8601String(),
      );

  OrderStatus toDomain() => OrderStatus(
        event: event,
        status: status,
        timeStamp: DateTime.tryParse(timeStamp ?? ''),
      );

  factory OrderStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$OrderStatusDTOFromJson(json);
}
