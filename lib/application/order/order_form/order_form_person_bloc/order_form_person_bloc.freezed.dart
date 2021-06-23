// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_form_person_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderFormPersonEventTearOff {
  const _$OrderFormPersonEventTearOff();

  _Initialized initialized(Option<Order> initialOrderOption) {
    return _Initialized(
      initialOrderOption,
    );
  }

  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

  _TcChanged tcChanged(String tc) {
    return _TcChanged(
      tc,
    );
  }

  _PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return _PhoneNumberChanged(
      phoneNumber,
    );
  }

  _AddressChanged addressChanged(String address) {
    return _AddressChanged(
      address,
    );
  }

  _Validated validated() {
    return const _Validated();
  }
}

/// @nodoc
const $OrderFormPersonEvent = _$OrderFormPersonEventTearOff();

/// @nodoc
mixin _$OrderFormPersonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormPersonEventCopyWith<$Res> {
  factory $OrderFormPersonEventCopyWith(OrderFormPersonEvent value,
          $Res Function(OrderFormPersonEvent) then) =
      _$OrderFormPersonEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderFormPersonEventCopyWithImpl<$Res>
    implements $OrderFormPersonEventCopyWith<$Res> {
  _$OrderFormPersonEventCopyWithImpl(this._value, this._then);

  final OrderFormPersonEvent _value;
  // ignore: unused_field
  final $Res Function(OrderFormPersonEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Order> initialOrderOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialOrderOption = freezed,
  }) {
    return _then(_Initialized(
      initialOrderOption == freezed
          ? _value.initialOrderOption
          : initialOrderOption // ignore: cast_nullable_to_non_nullable
              as Option<Order>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialOrderOption);

  @override
  final Option<Order> initialOrderOption;

  @override
  String toString() {
    return 'OrderFormPersonEvent.initialized(initialOrderOption: $initialOrderOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialOrderOption, initialOrderOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialOrderOption, initialOrderOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialOrderOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return initialized(initialOrderOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialOrderOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements OrderFormPersonEvent {
  const factory _Initialized(Option<Order> initialOrderOption) = _$_Initialized;

  Option<Order> get initialOrderOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'OrderFormPersonEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements OrderFormPersonEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TcChangedCopyWith<$Res> {
  factory _$TcChangedCopyWith(
          _TcChanged value, $Res Function(_TcChanged) then) =
      __$TcChangedCopyWithImpl<$Res>;
  $Res call({String tc});
}

/// @nodoc
class __$TcChangedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$TcChangedCopyWith<$Res> {
  __$TcChangedCopyWithImpl(_TcChanged _value, $Res Function(_TcChanged) _then)
      : super(_value, (v) => _then(v as _TcChanged));

  @override
  _TcChanged get _value => super._value as _TcChanged;

  @override
  $Res call({
    Object? tc = freezed,
  }) {
    return _then(_TcChanged(
      tc == freezed
          ? _value.tc
          : tc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TcChanged implements _TcChanged {
  const _$_TcChanged(this.tc);

  @override
  final String tc;

  @override
  String toString() {
    return 'OrderFormPersonEvent.tcChanged(tc: $tc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TcChanged &&
            (identical(other.tc, tc) ||
                const DeepCollectionEquality().equals(other.tc, tc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tc);

  @JsonKey(ignore: true)
  @override
  _$TcChangedCopyWith<_TcChanged> get copyWith =>
      __$TcChangedCopyWithImpl<_TcChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return tcChanged(tc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (tcChanged != null) {
      return tcChanged(tc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return tcChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (tcChanged != null) {
      return tcChanged(this);
    }
    return orElse();
  }
}

abstract class _TcChanged implements OrderFormPersonEvent {
  const factory _TcChanged(String tc) = _$_TcChanged;

  String get tc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TcChangedCopyWith<_TcChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'OrderFormPersonEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements OrderFormPersonEvent {
  const factory _PhoneNumberChanged(String phoneNumber) = _$_PhoneNumberChanged;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddressChangedCopyWith<$Res> {
  factory _$AddressChangedCopyWith(
          _AddressChanged value, $Res Function(_AddressChanged) then) =
      __$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$AddressChangedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$AddressChangedCopyWith<$Res> {
  __$AddressChangedCopyWithImpl(
      _AddressChanged _value, $Res Function(_AddressChanged) _then)
      : super(_value, (v) => _then(v as _AddressChanged));

  @override
  _AddressChanged get _value => super._value as _AddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_AddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'OrderFormPersonEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$AddressChangedCopyWith<_AddressChanged> get copyWith =>
      __$AddressChangedCopyWithImpl<_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements OrderFormPersonEvent {
  const factory _AddressChanged(String address) = _$_AddressChanged;

  String get address => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AddressChangedCopyWith<_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidatedCopyWith<$Res> {
  factory _$ValidatedCopyWith(
          _Validated value, $Res Function(_Validated) then) =
      __$ValidatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ValidatedCopyWithImpl<$Res>
    extends _$OrderFormPersonEventCopyWithImpl<$Res>
    implements _$ValidatedCopyWith<$Res> {
  __$ValidatedCopyWithImpl(_Validated _value, $Res Function(_Validated) _then)
      : super(_value, (v) => _then(v as _Validated));

  @override
  _Validated get _value => super._value as _Validated;
}

/// @nodoc

class _$_Validated implements _Validated {
  const _$_Validated();

  @override
  String toString() {
    return 'OrderFormPersonEvent.validated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Validated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Order> initialOrderOption) initialized,
    required TResult Function(String name) nameChanged,
    required TResult Function(String tc) tcChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function() validated,
  }) {
    return validated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Order> initialOrderOption)? initialized,
    TResult Function(String name)? nameChanged,
    TResult Function(String tc)? tcChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String address)? addressChanged,
    TResult Function()? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_TcChanged value) tcChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_Validated value) validated,
  }) {
    return validated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_TcChanged value)? tcChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_Validated value)? validated,
    required TResult orElse(),
  }) {
    if (validated != null) {
      return validated(this);
    }
    return orElse();
  }
}

abstract class _Validated implements OrderFormPersonEvent {
  const factory _Validated() = _$_Validated;
}

/// @nodoc
class _$OrderFormPersonStateTearOff {
  const _$OrderFormPersonStateTearOff();

  _OrderFormPersonState call(
      {required Person person,
      required Option<ValueFailure<String>> nameFailure,
      required Option<ValueFailure<String>> tcFailure,
      required Option<ValueFailure<String>> addressFailure,
      required Option<ValueFailure<String>> phoneNumberFailure,
      required Option<ValueFailure<dynamic>> overallFailure}) {
    return _OrderFormPersonState(
      person: person,
      nameFailure: nameFailure,
      tcFailure: tcFailure,
      addressFailure: addressFailure,
      phoneNumberFailure: phoneNumberFailure,
      overallFailure: overallFailure,
    );
  }
}

/// @nodoc
const $OrderFormPersonState = _$OrderFormPersonStateTearOff();

/// @nodoc
mixin _$OrderFormPersonState {
  Person get person => throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get nameFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get tcFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get addressFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<String>> get phoneNumberFailure =>
      throw _privateConstructorUsedError;
  Option<ValueFailure<dynamic>> get overallFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderFormPersonStateCopyWith<OrderFormPersonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormPersonStateCopyWith<$Res> {
  factory $OrderFormPersonStateCopyWith(OrderFormPersonState value,
          $Res Function(OrderFormPersonState) then) =
      _$OrderFormPersonStateCopyWithImpl<$Res>;
  $Res call(
      {Person person,
      Option<ValueFailure<String>> nameFailure,
      Option<ValueFailure<String>> tcFailure,
      Option<ValueFailure<String>> addressFailure,
      Option<ValueFailure<String>> phoneNumberFailure,
      Option<ValueFailure<dynamic>> overallFailure});
}

/// @nodoc
class _$OrderFormPersonStateCopyWithImpl<$Res>
    implements $OrderFormPersonStateCopyWith<$Res> {
  _$OrderFormPersonStateCopyWithImpl(this._value, this._then);

  final OrderFormPersonState _value;
  // ignore: unused_field
  final $Res Function(OrderFormPersonState) _then;

  @override
  $Res call({
    Object? person = freezed,
    Object? nameFailure = freezed,
    Object? tcFailure = freezed,
    Object? addressFailure = freezed,
    Object? phoneNumberFailure = freezed,
    Object? overallFailure = freezed,
  }) {
    return _then(_value.copyWith(
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      nameFailure: nameFailure == freezed
          ? _value.nameFailure
          : nameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      tcFailure: tcFailure == freezed
          ? _value.tcFailure
          : tcFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      addressFailure: addressFailure == freezed
          ? _value.addressFailure
          : addressFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      phoneNumberFailure: phoneNumberFailure == freezed
          ? _value.phoneNumberFailure
          : phoneNumberFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      overallFailure: overallFailure == freezed
          ? _value.overallFailure
          : overallFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$OrderFormPersonStateCopyWith<$Res>
    implements $OrderFormPersonStateCopyWith<$Res> {
  factory _$OrderFormPersonStateCopyWith(_OrderFormPersonState value,
          $Res Function(_OrderFormPersonState) then) =
      __$OrderFormPersonStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Person person,
      Option<ValueFailure<String>> nameFailure,
      Option<ValueFailure<String>> tcFailure,
      Option<ValueFailure<String>> addressFailure,
      Option<ValueFailure<String>> phoneNumberFailure,
      Option<ValueFailure<dynamic>> overallFailure});
}

/// @nodoc
class __$OrderFormPersonStateCopyWithImpl<$Res>
    extends _$OrderFormPersonStateCopyWithImpl<$Res>
    implements _$OrderFormPersonStateCopyWith<$Res> {
  __$OrderFormPersonStateCopyWithImpl(
      _OrderFormPersonState _value, $Res Function(_OrderFormPersonState) _then)
      : super(_value, (v) => _then(v as _OrderFormPersonState));

  @override
  _OrderFormPersonState get _value => super._value as _OrderFormPersonState;

  @override
  $Res call({
    Object? person = freezed,
    Object? nameFailure = freezed,
    Object? tcFailure = freezed,
    Object? addressFailure = freezed,
    Object? phoneNumberFailure = freezed,
    Object? overallFailure = freezed,
  }) {
    return _then(_OrderFormPersonState(
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
      nameFailure: nameFailure == freezed
          ? _value.nameFailure
          : nameFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      tcFailure: tcFailure == freezed
          ? _value.tcFailure
          : tcFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      addressFailure: addressFailure == freezed
          ? _value.addressFailure
          : addressFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      phoneNumberFailure: phoneNumberFailure == freezed
          ? _value.phoneNumberFailure
          : phoneNumberFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<String>>,
      overallFailure: overallFailure == freezed
          ? _value.overallFailure
          : overallFailure // ignore: cast_nullable_to_non_nullable
              as Option<ValueFailure<dynamic>>,
    ));
  }
}

/// @nodoc

class _$_OrderFormPersonState implements _OrderFormPersonState {
  const _$_OrderFormPersonState(
      {required this.person,
      required this.nameFailure,
      required this.tcFailure,
      required this.addressFailure,
      required this.phoneNumberFailure,
      required this.overallFailure});

  @override
  final Person person;
  @override
  final Option<ValueFailure<String>> nameFailure;
  @override
  final Option<ValueFailure<String>> tcFailure;
  @override
  final Option<ValueFailure<String>> addressFailure;
  @override
  final Option<ValueFailure<String>> phoneNumberFailure;
  @override
  final Option<ValueFailure<dynamic>> overallFailure;

  @override
  String toString() {
    return 'OrderFormPersonState(person: $person, nameFailure: $nameFailure, tcFailure: $tcFailure, addressFailure: $addressFailure, phoneNumberFailure: $phoneNumberFailure, overallFailure: $overallFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderFormPersonState &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.nameFailure, nameFailure) ||
                const DeepCollectionEquality()
                    .equals(other.nameFailure, nameFailure)) &&
            (identical(other.tcFailure, tcFailure) ||
                const DeepCollectionEquality()
                    .equals(other.tcFailure, tcFailure)) &&
            (identical(other.addressFailure, addressFailure) ||
                const DeepCollectionEquality()
                    .equals(other.addressFailure, addressFailure)) &&
            (identical(other.phoneNumberFailure, phoneNumberFailure) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberFailure, phoneNumberFailure)) &&
            (identical(other.overallFailure, overallFailure) ||
                const DeepCollectionEquality()
                    .equals(other.overallFailure, overallFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(nameFailure) ^
      const DeepCollectionEquality().hash(tcFailure) ^
      const DeepCollectionEquality().hash(addressFailure) ^
      const DeepCollectionEquality().hash(phoneNumberFailure) ^
      const DeepCollectionEquality().hash(overallFailure);

  @JsonKey(ignore: true)
  @override
  _$OrderFormPersonStateCopyWith<_OrderFormPersonState> get copyWith =>
      __$OrderFormPersonStateCopyWithImpl<_OrderFormPersonState>(
          this, _$identity);
}

abstract class _OrderFormPersonState implements OrderFormPersonState {
  const factory _OrderFormPersonState(
          {required Person person,
          required Option<ValueFailure<String>> nameFailure,
          required Option<ValueFailure<String>> tcFailure,
          required Option<ValueFailure<String>> addressFailure,
          required Option<ValueFailure<String>> phoneNumberFailure,
          required Option<ValueFailure<dynamic>> overallFailure}) =
      _$_OrderFormPersonState;

  @override
  Person get person => throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get nameFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get tcFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get addressFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<String>> get phoneNumberFailure =>
      throw _privateConstructorUsedError;
  @override
  Option<ValueFailure<dynamic>> get overallFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderFormPersonStateCopyWith<_OrderFormPersonState> get copyWith =>
      throw _privateConstructorUsedError;
}
