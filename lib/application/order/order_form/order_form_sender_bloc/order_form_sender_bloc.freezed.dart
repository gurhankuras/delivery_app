// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_form_sender_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OrderFormSenderEventTearOff {
  const _$OrderFormSenderEventTearOff();

  _Saved saved() {
    return const _Saved();
  }

  _Cleaned cleaned() {
    return const _Cleaned();
  }
}

/// @nodoc
const $OrderFormSenderEvent = _$OrderFormSenderEventTearOff();

/// @nodoc
mixin _$OrderFormSenderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saved,
    required TResult Function() cleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saved,
    TResult Function()? cleaned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Saved value) saved,
    required TResult Function(_Cleaned value) cleaned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Saved value)? saved,
    TResult Function(_Cleaned value)? cleaned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderFormSenderEventCopyWith<$Res> {
  factory $OrderFormSenderEventCopyWith(OrderFormSenderEvent value,
          $Res Function(OrderFormSenderEvent) then) =
      _$OrderFormSenderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OrderFormSenderEventCopyWithImpl<$Res>
    implements $OrderFormSenderEventCopyWith<$Res> {
  _$OrderFormSenderEventCopyWithImpl(this._value, this._then);

  final OrderFormSenderEvent _value;
  // ignore: unused_field
  final $Res Function(OrderFormSenderEvent) _then;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$OrderFormSenderEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'OrderFormSenderEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saved,
    required TResult Function() cleaned,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saved,
    TResult Function()? cleaned,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Saved value) saved,
    required TResult Function(_Cleaned value) cleaned,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Saved value)? saved,
    TResult Function(_Cleaned value)? cleaned,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements OrderFormSenderEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$CleanedCopyWith<$Res> {
  factory _$CleanedCopyWith(_Cleaned value, $Res Function(_Cleaned) then) =
      __$CleanedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CleanedCopyWithImpl<$Res>
    extends _$OrderFormSenderEventCopyWithImpl<$Res>
    implements _$CleanedCopyWith<$Res> {
  __$CleanedCopyWithImpl(_Cleaned _value, $Res Function(_Cleaned) _then)
      : super(_value, (v) => _then(v as _Cleaned));

  @override
  _Cleaned get _value => super._value as _Cleaned;
}

/// @nodoc

class _$_Cleaned implements _Cleaned {
  const _$_Cleaned();

  @override
  String toString() {
    return 'OrderFormSenderEvent.cleaned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Cleaned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saved,
    required TResult Function() cleaned,
  }) {
    return cleaned();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saved,
    TResult Function()? cleaned,
    required TResult orElse(),
  }) {
    if (cleaned != null) {
      return cleaned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Saved value) saved,
    required TResult Function(_Cleaned value) cleaned,
  }) {
    return cleaned(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Saved value)? saved,
    TResult Function(_Cleaned value)? cleaned,
    required TResult orElse(),
  }) {
    if (cleaned != null) {
      return cleaned(this);
    }
    return orElse();
  }
}

abstract class _Cleaned implements OrderFormSenderEvent {
  const factory _Cleaned() = _$_Cleaned;
}
