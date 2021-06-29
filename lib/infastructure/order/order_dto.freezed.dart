// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDTO _$OrderDTOFromJson(Map<String, dynamic> json) {
  return _OrderDTO.fromJson(json);
}

/// @nodoc
class _$OrderDTOTearOff {
  const _$OrderDTOTearOff();

  _OrderDTO call(
      {String? orderId,
      PersonDTO? sender,
      PersonDTO? receiver,
      @JsonKey(name: 'states') List<OrderStatusDTO>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType}) {
    return _OrderDTO(
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

  OrderDTO fromJson(Map<String, Object> json) {
    return OrderDTO.fromJson(json);
  }
}

/// @nodoc
const $OrderDTO = _$OrderDTOTearOff();

/// @nodoc
mixin _$OrderDTO {
  String? get orderId => throw _privateConstructorUsedError;
  PersonDTO? get sender => throw _privateConstructorUsedError;
  PersonDTO? get receiver => throw _privateConstructorUsedError;
  @JsonKey(name: 'states')
  List<OrderStatusDTO>? get orderStates => throw _privateConstructorUsedError;
  String? get packageName => throw _privateConstructorUsedError;
  String? get packageCategory => throw _privateConstructorUsedError;
  String? get packageType => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  String? get vehicleType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDTOCopyWith<OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDTOCopyWith<$Res> {
  factory $OrderDTOCopyWith(OrderDTO value, $Res Function(OrderDTO) then) =
      _$OrderDTOCopyWithImpl<$Res>;
  $Res call(
      {String? orderId,
      PersonDTO? sender,
      PersonDTO? receiver,
      @JsonKey(name: 'states') List<OrderStatusDTO>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType});

  $PersonDTOCopyWith<$Res>? get sender;
  $PersonDTOCopyWith<$Res>? get receiver;
}

/// @nodoc
class _$OrderDTOCopyWithImpl<$Res> implements $OrderDTOCopyWith<$Res> {
  _$OrderDTOCopyWithImpl(this._value, this._then);

  final OrderDTO _value;
  // ignore: unused_field
  final $Res Function(OrderDTO) _then;

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
              as PersonDTO?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as PersonDTO?,
      orderStates: orderStates == freezed
          ? _value.orderStates
          : orderStates // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusDTO>?,
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

  @override
  $PersonDTOCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $PersonDTOCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }

  @override
  $PersonDTOCopyWith<$Res>? get receiver {
    if (_value.receiver == null) {
      return null;
    }

    return $PersonDTOCopyWith<$Res>(_value.receiver!, (value) {
      return _then(_value.copyWith(receiver: value));
    });
  }
}

/// @nodoc
abstract class _$OrderDTOCopyWith<$Res> implements $OrderDTOCopyWith<$Res> {
  factory _$OrderDTOCopyWith(_OrderDTO value, $Res Function(_OrderDTO) then) =
      __$OrderDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? orderId,
      PersonDTO? sender,
      PersonDTO? receiver,
      @JsonKey(name: 'states') List<OrderStatusDTO>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType});

  @override
  $PersonDTOCopyWith<$Res>? get sender;
  @override
  $PersonDTOCopyWith<$Res>? get receiver;
}

/// @nodoc
class __$OrderDTOCopyWithImpl<$Res> extends _$OrderDTOCopyWithImpl<$Res>
    implements _$OrderDTOCopyWith<$Res> {
  __$OrderDTOCopyWithImpl(_OrderDTO _value, $Res Function(_OrderDTO) _then)
      : super(_value, (v) => _then(v as _OrderDTO));

  @override
  _OrderDTO get _value => super._value as _OrderDTO;

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
    return _then(_OrderDTO(
      orderId: orderId == freezed
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as PersonDTO?,
      receiver: receiver == freezed
          ? _value.receiver
          : receiver // ignore: cast_nullable_to_non_nullable
              as PersonDTO?,
      orderStates: orderStates == freezed
          ? _value.orderStates
          : orderStates // ignore: cast_nullable_to_non_nullable
              as List<OrderStatusDTO>?,
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
@JsonSerializable()
class _$_OrderDTO extends _OrderDTO {
  _$_OrderDTO(
      {this.orderId,
      this.sender,
      this.receiver,
      @JsonKey(name: 'states') this.orderStates,
      this.packageName,
      this.packageCategory,
      this.packageType,
      this.weight,
      this.vehicleType})
      : super._();

  factory _$_OrderDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDTOFromJson(json);

  @override
  final String? orderId;
  @override
  final PersonDTO? sender;
  @override
  final PersonDTO? receiver;
  @override
  @JsonKey(name: 'states')
  final List<OrderStatusDTO>? orderStates;
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
    return 'OrderDTO(orderId: $orderId, sender: $sender, receiver: $receiver, orderStates: $orderStates, packageName: $packageName, packageCategory: $packageCategory, packageType: $packageType, weight: $weight, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDTO &&
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
  _$OrderDTOCopyWith<_OrderDTO> get copyWith =>
      __$OrderDTOCopyWithImpl<_OrderDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDTOToJson(this);
  }
}

abstract class _OrderDTO extends OrderDTO {
  factory _OrderDTO(
      {String? orderId,
      PersonDTO? sender,
      PersonDTO? receiver,
      @JsonKey(name: 'states') List<OrderStatusDTO>? orderStates,
      String? packageName,
      String? packageCategory,
      String? packageType,
      double? weight,
      String? vehicleType}) = _$_OrderDTO;
  _OrderDTO._() : super._();

  factory _OrderDTO.fromJson(Map<String, dynamic> json) = _$_OrderDTO.fromJson;

  @override
  String? get orderId => throw _privateConstructorUsedError;
  @override
  PersonDTO? get sender => throw _privateConstructorUsedError;
  @override
  PersonDTO? get receiver => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'states')
  List<OrderStatusDTO>? get orderStates => throw _privateConstructorUsedError;
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
  _$OrderDTOCopyWith<_OrderDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonDTO _$PersonDTOFromJson(Map<String, dynamic> json) {
  return _PersonDTO.fromJson(json);
}

/// @nodoc
class _$PersonDTOTearOff {
  const _$PersonDTOTearOff();

  _PersonDTO call(
      {String? name, String? phoneNumber, String? trId, String? address}) {
    return _PersonDTO(
      name: name,
      phoneNumber: phoneNumber,
      trId: trId,
      address: address,
    );
  }

  PersonDTO fromJson(Map<String, Object> json) {
    return PersonDTO.fromJson(json);
  }
}

/// @nodoc
const $PersonDTO = _$PersonDTOTearOff();

/// @nodoc
mixin _$PersonDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get trId => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDTOCopyWith<PersonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDTOCopyWith<$Res> {
  factory $PersonDTOCopyWith(PersonDTO value, $Res Function(PersonDTO) then) =
      _$PersonDTOCopyWithImpl<$Res>;
  $Res call({String? name, String? phoneNumber, String? trId, String? address});
}

/// @nodoc
class _$PersonDTOCopyWithImpl<$Res> implements $PersonDTOCopyWith<$Res> {
  _$PersonDTOCopyWithImpl(this._value, this._then);

  final PersonDTO _value;
  // ignore: unused_field
  final $Res Function(PersonDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? trId = freezed,
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      trId: trId == freezed
          ? _value.trId
          : trId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PersonDTOCopyWith<$Res> implements $PersonDTOCopyWith<$Res> {
  factory _$PersonDTOCopyWith(
          _PersonDTO value, $Res Function(_PersonDTO) then) =
      __$PersonDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? name, String? phoneNumber, String? trId, String? address});
}

/// @nodoc
class __$PersonDTOCopyWithImpl<$Res> extends _$PersonDTOCopyWithImpl<$Res>
    implements _$PersonDTOCopyWith<$Res> {
  __$PersonDTOCopyWithImpl(_PersonDTO _value, $Res Function(_PersonDTO) _then)
      : super(_value, (v) => _then(v as _PersonDTO));

  @override
  _PersonDTO get _value => super._value as _PersonDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? trId = freezed,
    Object? address = freezed,
  }) {
    return _then(_PersonDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      trId: trId == freezed
          ? _value.trId
          : trId // ignore: cast_nullable_to_non_nullable
              as String?,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonDTO extends _PersonDTO {
  _$_PersonDTO({this.name, this.phoneNumber, this.trId, this.address})
      : super._();

  factory _$_PersonDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonDTOFromJson(json);

  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? trId;
  @override
  final String? address;

  @override
  String toString() {
    return 'PersonDTO(name: $name, phoneNumber: $phoneNumber, trId: $trId, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonDTO &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.trId, trId) ||
                const DeepCollectionEquality().equals(other.trId, trId)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(trId) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$PersonDTOCopyWith<_PersonDTO> get copyWith =>
      __$PersonDTOCopyWithImpl<_PersonDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonDTOToJson(this);
  }
}

abstract class _PersonDTO extends PersonDTO {
  factory _PersonDTO(
      {String? name,
      String? phoneNumber,
      String? trId,
      String? address}) = _$_PersonDTO;
  _PersonDTO._() : super._();

  factory _PersonDTO.fromJson(Map<String, dynamic> json) =
      _$_PersonDTO.fromJson;

  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  String? get trId => throw _privateConstructorUsedError;
  @override
  String? get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonDTOCopyWith<_PersonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

TrackIdDTO _$TrackIdDTOFromJson(Map<String, dynamic> json) {
  return _TrackIdDTO.fromJson(json);
}

/// @nodoc
class _$TrackIdDTOTearOff {
  const _$TrackIdDTOTearOff();

  _TrackIdDTO call({String? value}) {
    return _TrackIdDTO(
      value: value,
    );
  }

  TrackIdDTO fromJson(Map<String, Object> json) {
    return TrackIdDTO.fromJson(json);
  }
}

/// @nodoc
const $TrackIdDTO = _$TrackIdDTOTearOff();

/// @nodoc
mixin _$TrackIdDTO {
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackIdDTOCopyWith<TrackIdDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackIdDTOCopyWith<$Res> {
  factory $TrackIdDTOCopyWith(
          TrackIdDTO value, $Res Function(TrackIdDTO) then) =
      _$TrackIdDTOCopyWithImpl<$Res>;
  $Res call({String? value});
}

/// @nodoc
class _$TrackIdDTOCopyWithImpl<$Res> implements $TrackIdDTOCopyWith<$Res> {
  _$TrackIdDTOCopyWithImpl(this._value, this._then);

  final TrackIdDTO _value;
  // ignore: unused_field
  final $Res Function(TrackIdDTO) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TrackIdDTOCopyWith<$Res> implements $TrackIdDTOCopyWith<$Res> {
  factory _$TrackIdDTOCopyWith(
          _TrackIdDTO value, $Res Function(_TrackIdDTO) then) =
      __$TrackIdDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? value});
}

/// @nodoc
class __$TrackIdDTOCopyWithImpl<$Res> extends _$TrackIdDTOCopyWithImpl<$Res>
    implements _$TrackIdDTOCopyWith<$Res> {
  __$TrackIdDTOCopyWithImpl(
      _TrackIdDTO _value, $Res Function(_TrackIdDTO) _then)
      : super(_value, (v) => _then(v as _TrackIdDTO));

  @override
  _TrackIdDTO get _value => super._value as _TrackIdDTO;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_TrackIdDTO(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrackIdDTO extends _TrackIdDTO {
  _$_TrackIdDTO({this.value}) : super._();

  factory _$_TrackIdDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TrackIdDTOFromJson(json);

  @override
  final String? value;

  @override
  String toString() {
    return 'TrackIdDTO(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrackIdDTO &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  _$TrackIdDTOCopyWith<_TrackIdDTO> get copyWith =>
      __$TrackIdDTOCopyWithImpl<_TrackIdDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TrackIdDTOToJson(this);
  }
}

abstract class _TrackIdDTO extends TrackIdDTO {
  factory _TrackIdDTO({String? value}) = _$_TrackIdDTO;
  _TrackIdDTO._() : super._();

  factory _TrackIdDTO.fromJson(Map<String, dynamic> json) =
      _$_TrackIdDTO.fromJson;

  @override
  String? get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TrackIdDTOCopyWith<_TrackIdDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStatusDTO _$OrderStatusDTOFromJson(Map<String, dynamic> json) {
  return _OrderStatusDTO.fromJson(json);
}

/// @nodoc
class _$OrderStatusDTOTearOff {
  const _$OrderStatusDTOTearOff();

  _OrderStatusDTO call({String? event, String? timeStamp, int? status}) {
    return _OrderStatusDTO(
      event: event,
      timeStamp: timeStamp,
      status: status,
    );
  }

  OrderStatusDTO fromJson(Map<String, Object> json) {
    return OrderStatusDTO.fromJson(json);
  }
}

/// @nodoc
const $OrderStatusDTO = _$OrderStatusDTOTearOff();

/// @nodoc
mixin _$OrderStatusDTO {
  String? get event => throw _privateConstructorUsedError;
  String? get timeStamp => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusDTOCopyWith<OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusDTOCopyWith<$Res> {
  factory $OrderStatusDTOCopyWith(
          OrderStatusDTO value, $Res Function(OrderStatusDTO) then) =
      _$OrderStatusDTOCopyWithImpl<$Res>;
  $Res call({String? event, String? timeStamp, int? status});
}

/// @nodoc
class _$OrderStatusDTOCopyWithImpl<$Res>
    implements $OrderStatusDTOCopyWith<$Res> {
  _$OrderStatusDTOCopyWithImpl(this._value, this._then);

  final OrderStatusDTO _value;
  // ignore: unused_field
  final $Res Function(OrderStatusDTO) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? timeStamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OrderStatusDTOCopyWith<$Res>
    implements $OrderStatusDTOCopyWith<$Res> {
  factory _$OrderStatusDTOCopyWith(
          _OrderStatusDTO value, $Res Function(_OrderStatusDTO) then) =
      __$OrderStatusDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? event, String? timeStamp, int? status});
}

/// @nodoc
class __$OrderStatusDTOCopyWithImpl<$Res>
    extends _$OrderStatusDTOCopyWithImpl<$Res>
    implements _$OrderStatusDTOCopyWith<$Res> {
  __$OrderStatusDTOCopyWithImpl(
      _OrderStatusDTO _value, $Res Function(_OrderStatusDTO) _then)
      : super(_value, (v) => _then(v as _OrderStatusDTO));

  @override
  _OrderStatusDTO get _value => super._value as _OrderStatusDTO;

  @override
  $Res call({
    Object? event = freezed,
    Object? timeStamp = freezed,
    Object? status = freezed,
  }) {
    return _then(_OrderStatusDTO(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String?,
      timeStamp: timeStamp == freezed
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatusDTO extends _OrderStatusDTO {
  _$_OrderStatusDTO({this.event, this.timeStamp, this.status}) : super._();

  factory _$_OrderStatusDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderStatusDTOFromJson(json);

  @override
  final String? event;
  @override
  final String? timeStamp;
  @override
  final int? status;

  @override
  String toString() {
    return 'OrderStatusDTO(event: $event, timeStamp: $timeStamp, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderStatusDTO &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)) &&
            (identical(other.timeStamp, timeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.timeStamp, timeStamp)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(event) ^
      const DeepCollectionEquality().hash(timeStamp) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$OrderStatusDTOCopyWith<_OrderStatusDTO> get copyWith =>
      __$OrderStatusDTOCopyWithImpl<_OrderStatusDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderStatusDTOToJson(this);
  }
}

abstract class _OrderStatusDTO extends OrderStatusDTO {
  factory _OrderStatusDTO({String? event, String? timeStamp, int? status}) =
      _$_OrderStatusDTO;
  _OrderStatusDTO._() : super._();

  factory _OrderStatusDTO.fromJson(Map<String, dynamic> json) =
      _$_OrderStatusDTO.fromJson;

  @override
  String? get event => throw _privateConstructorUsedError;
  @override
  String? get timeStamp => throw _privateConstructorUsedError;
  @override
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderStatusDTOCopyWith<_OrderStatusDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
