// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'update_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UpdateOrderEventTearOff {
  const _$UpdateOrderEventTearOff();

  EventMessageChanged eventMessageChanged(String message) {
    return EventMessageChanged(
      message,
    );
  }

  StatusChanged statusChanged(int status) {
    return StatusChanged(
      status,
    );
  }

  OrderStateAdded orderStateAdded() {
    return const OrderStateAdded();
  }

  Submitted submitted() {
    return const Submitted();
  }

  Closed closed() {
    return const Closed();
  }
}

/// @nodoc
const $UpdateOrderEvent = _$UpdateOrderEventTearOff();

/// @nodoc
mixin _$UpdateOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderEventCopyWith<$Res> {
  factory $UpdateOrderEventCopyWith(
          UpdateOrderEvent value, $Res Function(UpdateOrderEvent) then) =
      _$UpdateOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateOrderEventCopyWithImpl<$Res>
    implements $UpdateOrderEventCopyWith<$Res> {
  _$UpdateOrderEventCopyWithImpl(this._value, this._then);

  final UpdateOrderEvent _value;
  // ignore: unused_field
  final $Res Function(UpdateOrderEvent) _then;
}

/// @nodoc
abstract class $EventMessageChangedCopyWith<$Res> {
  factory $EventMessageChangedCopyWith(
          EventMessageChanged value, $Res Function(EventMessageChanged) then) =
      _$EventMessageChangedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EventMessageChangedCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res>
    implements $EventMessageChangedCopyWith<$Res> {
  _$EventMessageChangedCopyWithImpl(
      EventMessageChanged _value, $Res Function(EventMessageChanged) _then)
      : super(_value, (v) => _then(v as EventMessageChanged));

  @override
  EventMessageChanged get _value => super._value as EventMessageChanged;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(EventMessageChanged(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EventMessageChanged implements EventMessageChanged {
  const _$EventMessageChanged(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateOrderEvent.eventMessageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EventMessageChanged &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $EventMessageChangedCopyWith<EventMessageChanged> get copyWith =>
      _$EventMessageChangedCopyWithImpl<EventMessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) {
    return eventMessageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (eventMessageChanged != null) {
      return eventMessageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) {
    return eventMessageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (eventMessageChanged != null) {
      return eventMessageChanged(this);
    }
    return orElse();
  }
}

abstract class EventMessageChanged implements UpdateOrderEvent {
  const factory EventMessageChanged(String message) = _$EventMessageChanged;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventMessageChangedCopyWith<EventMessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusChangedCopyWith<$Res> {
  factory $StatusChangedCopyWith(
          StatusChanged value, $Res Function(StatusChanged) then) =
      _$StatusChangedCopyWithImpl<$Res>;
  $Res call({int status});
}

/// @nodoc
class _$StatusChangedCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res>
    implements $StatusChangedCopyWith<$Res> {
  _$StatusChangedCopyWithImpl(
      StatusChanged _value, $Res Function(StatusChanged) _then)
      : super(_value, (v) => _then(v as StatusChanged));

  @override
  StatusChanged get _value => super._value as StatusChanged;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(StatusChanged(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StatusChanged implements StatusChanged {
  const _$StatusChanged(this.status);

  @override
  final int status;

  @override
  String toString() {
    return 'UpdateOrderEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StatusChanged &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  $StatusChangedCopyWith<StatusChanged> get copyWith =>
      _$StatusChangedCopyWithImpl<StatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class StatusChanged implements UpdateOrderEvent {
  const factory StatusChanged(int status) = _$StatusChanged;

  int get status => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusChangedCopyWith<StatusChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateAddedCopyWith<$Res> {
  factory $OrderStateAddedCopyWith(
          OrderStateAdded value, $Res Function(OrderStateAdded) then) =
      _$OrderStateAddedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderStateAddedCopyWithImpl<$Res>
    extends _$UpdateOrderEventCopyWithImpl<$Res>
    implements $OrderStateAddedCopyWith<$Res> {
  _$OrderStateAddedCopyWithImpl(
      OrderStateAdded _value, $Res Function(OrderStateAdded) _then)
      : super(_value, (v) => _then(v as OrderStateAdded));

  @override
  OrderStateAdded get _value => super._value as OrderStateAdded;
}

/// @nodoc

class _$OrderStateAdded implements OrderStateAdded {
  const _$OrderStateAdded();

  @override
  String toString() {
    return 'UpdateOrderEvent.orderStateAdded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OrderStateAdded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) {
    return orderStateAdded();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (orderStateAdded != null) {
      return orderStateAdded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) {
    return orderStateAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (orderStateAdded != null) {
      return orderStateAdded(this);
    }
    return orElse();
  }
}

abstract class OrderStateAdded implements UpdateOrderEvent {
  const factory OrderStateAdded() = _$OrderStateAdded;
}

/// @nodoc
abstract class $SubmittedCopyWith<$Res> {
  factory $SubmittedCopyWith(Submitted value, $Res Function(Submitted) then) =
      _$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmittedCopyWithImpl<$Res> extends _$UpdateOrderEventCopyWithImpl<$Res>
    implements $SubmittedCopyWith<$Res> {
  _$SubmittedCopyWithImpl(Submitted _value, $Res Function(Submitted) _then)
      : super(_value, (v) => _then(v as Submitted));

  @override
  Submitted get _value => super._value as Submitted;
}

/// @nodoc

class _$Submitted implements Submitted {
  const _$Submitted();

  @override
  String toString() {
    return 'UpdateOrderEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements UpdateOrderEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
abstract class $ClosedCopyWith<$Res> {
  factory $ClosedCopyWith(Closed value, $Res Function(Closed) then) =
      _$ClosedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClosedCopyWithImpl<$Res> extends _$UpdateOrderEventCopyWithImpl<$Res>
    implements $ClosedCopyWith<$Res> {
  _$ClosedCopyWithImpl(Closed _value, $Res Function(Closed) _then)
      : super(_value, (v) => _then(v as Closed));

  @override
  Closed get _value => super._value as Closed;
}

/// @nodoc

class _$Closed implements Closed {
  const _$Closed();

  @override
  String toString() {
    return 'UpdateOrderEvent.closed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Closed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) eventMessageChanged,
    required TResult Function(int status) statusChanged,
    required TResult Function() orderStateAdded,
    required TResult Function() submitted,
    required TResult Function() closed,
  }) {
    return closed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? eventMessageChanged,
    TResult Function(int status)? statusChanged,
    TResult Function()? orderStateAdded,
    TResult Function()? submitted,
    TResult Function()? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EventMessageChanged value) eventMessageChanged,
    required TResult Function(StatusChanged value) statusChanged,
    required TResult Function(OrderStateAdded value) orderStateAdded,
    required TResult Function(Submitted value) submitted,
    required TResult Function(Closed value) closed,
  }) {
    return closed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EventMessageChanged value)? eventMessageChanged,
    TResult Function(StatusChanged value)? statusChanged,
    TResult Function(OrderStateAdded value)? orderStateAdded,
    TResult Function(Submitted value)? submitted,
    TResult Function(Closed value)? closed,
    required TResult orElse(),
  }) {
    if (closed != null) {
      return closed(this);
    }
    return orElse();
  }
}

abstract class Closed implements UpdateOrderEvent {
  const factory Closed() = _$Closed;
}

/// @nodoc
class _$UpdateOrderStateTearOff {
  const _$UpdateOrderStateTearOff();

  _UpdateOrderState call(
      {required bool isLoading,
      required OrderStatus status,
      required Order fetchedOrder,
      required Order editedOrder}) {
    return _UpdateOrderState(
      isLoading: isLoading,
      status: status,
      fetchedOrder: fetchedOrder,
      editedOrder: editedOrder,
    );
  }
}

/// @nodoc
const $UpdateOrderState = _$UpdateOrderStateTearOff();

/// @nodoc
mixin _$UpdateOrderState {
  bool get isLoading => throw _privateConstructorUsedError;
  OrderStatus get status => throw _privateConstructorUsedError;
  Order get fetchedOrder => throw _privateConstructorUsedError;
  Order get editedOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateOrderStateCopyWith<UpdateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderStateCopyWith<$Res> {
  factory $UpdateOrderStateCopyWith(
          UpdateOrderState value, $Res Function(UpdateOrderState) then) =
      _$UpdateOrderStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      OrderStatus status,
      Order fetchedOrder,
      Order editedOrder});

  $OrderCopyWith<$Res> get fetchedOrder;
  $OrderCopyWith<$Res> get editedOrder;
}

/// @nodoc
class _$UpdateOrderStateCopyWithImpl<$Res>
    implements $UpdateOrderStateCopyWith<$Res> {
  _$UpdateOrderStateCopyWithImpl(this._value, this._then);

  final UpdateOrderState _value;
  // ignore: unused_field
  final $Res Function(UpdateOrderState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? status = freezed,
    Object? fetchedOrder = freezed,
    Object? editedOrder = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      fetchedOrder: fetchedOrder == freezed
          ? _value.fetchedOrder
          : fetchedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
      editedOrder: editedOrder == freezed
          ? _value.editedOrder
          : editedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }

  @override
  $OrderCopyWith<$Res> get fetchedOrder {
    return $OrderCopyWith<$Res>(_value.fetchedOrder, (value) {
      return _then(_value.copyWith(fetchedOrder: value));
    });
  }

  @override
  $OrderCopyWith<$Res> get editedOrder {
    return $OrderCopyWith<$Res>(_value.editedOrder, (value) {
      return _then(_value.copyWith(editedOrder: value));
    });
  }
}

/// @nodoc
abstract class _$UpdateOrderStateCopyWith<$Res>
    implements $UpdateOrderStateCopyWith<$Res> {
  factory _$UpdateOrderStateCopyWith(
          _UpdateOrderState value, $Res Function(_UpdateOrderState) then) =
      __$UpdateOrderStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      OrderStatus status,
      Order fetchedOrder,
      Order editedOrder});

  @override
  $OrderCopyWith<$Res> get fetchedOrder;
  @override
  $OrderCopyWith<$Res> get editedOrder;
}

/// @nodoc
class __$UpdateOrderStateCopyWithImpl<$Res>
    extends _$UpdateOrderStateCopyWithImpl<$Res>
    implements _$UpdateOrderStateCopyWith<$Res> {
  __$UpdateOrderStateCopyWithImpl(
      _UpdateOrderState _value, $Res Function(_UpdateOrderState) _then)
      : super(_value, (v) => _then(v as _UpdateOrderState));

  @override
  _UpdateOrderState get _value => super._value as _UpdateOrderState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? status = freezed,
    Object? fetchedOrder = freezed,
    Object? editedOrder = freezed,
  }) {
    return _then(_UpdateOrderState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      fetchedOrder: fetchedOrder == freezed
          ? _value.fetchedOrder
          : fetchedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
      editedOrder: editedOrder == freezed
          ? _value.editedOrder
          : editedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$_UpdateOrderState implements _UpdateOrderState {
  const _$_UpdateOrderState(
      {required this.isLoading,
      required this.status,
      required this.fetchedOrder,
      required this.editedOrder});

  @override
  final bool isLoading;
  @override
  final OrderStatus status;
  @override
  final Order fetchedOrder;
  @override
  final Order editedOrder;

  @override
  String toString() {
    return 'UpdateOrderState(isLoading: $isLoading, status: $status, fetchedOrder: $fetchedOrder, editedOrder: $editedOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.fetchedOrder, fetchedOrder) ||
                const DeepCollectionEquality()
                    .equals(other.fetchedOrder, fetchedOrder)) &&
            (identical(other.editedOrder, editedOrder) ||
                const DeepCollectionEquality()
                    .equals(other.editedOrder, editedOrder)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(fetchedOrder) ^
      const DeepCollectionEquality().hash(editedOrder);

  @JsonKey(ignore: true)
  @override
  _$UpdateOrderStateCopyWith<_UpdateOrderState> get copyWith =>
      __$UpdateOrderStateCopyWithImpl<_UpdateOrderState>(this, _$identity);
}

abstract class _UpdateOrderState implements UpdateOrderState {
  const factory _UpdateOrderState(
      {required bool isLoading,
      required OrderStatus status,
      required Order fetchedOrder,
      required Order editedOrder}) = _$_UpdateOrderState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  OrderStatus get status => throw _privateConstructorUsedError;
  @override
  Order get fetchedOrder => throw _privateConstructorUsedError;
  @override
  Order get editedOrder => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UpdateOrderStateCopyWith<_UpdateOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}
