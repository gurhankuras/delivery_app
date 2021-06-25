// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirm_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ConfirmOrderEventTearOff {
  const _$ConfirmOrderEventTearOff();

  _Confirmed confirmed() {
    return const _Confirmed();
  }

  _Close close() {
    return const _Close();
  }

  _ReceiptRequested receiptRequested() {
    return const _ReceiptRequested();
  }
}

/// @nodoc
const $ConfirmOrderEvent = _$ConfirmOrderEventTearOff();

/// @nodoc
mixin _$ConfirmOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() close,
    required TResult Function() receiptRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? close,
    TResult Function()? receiptRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_Close value) close,
    required TResult Function(_ReceiptRequested value) receiptRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_Close value)? close,
    TResult Function(_ReceiptRequested value)? receiptRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmOrderEventCopyWith<$Res> {
  factory $ConfirmOrderEventCopyWith(
          ConfirmOrderEvent value, $Res Function(ConfirmOrderEvent) then) =
      _$ConfirmOrderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmOrderEventCopyWithImpl<$Res>
    implements $ConfirmOrderEventCopyWith<$Res> {
  _$ConfirmOrderEventCopyWithImpl(this._value, this._then);

  final ConfirmOrderEvent _value;
  // ignore: unused_field
  final $Res Function(ConfirmOrderEvent) _then;
}

/// @nodoc
abstract class _$ConfirmedCopyWith<$Res> {
  factory _$ConfirmedCopyWith(
          _Confirmed value, $Res Function(_Confirmed) then) =
      __$ConfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConfirmedCopyWithImpl<$Res>
    extends _$ConfirmOrderEventCopyWithImpl<$Res>
    implements _$ConfirmedCopyWith<$Res> {
  __$ConfirmedCopyWithImpl(_Confirmed _value, $Res Function(_Confirmed) _then)
      : super(_value, (v) => _then(v as _Confirmed));

  @override
  _Confirmed get _value => super._value as _Confirmed;
}

/// @nodoc

class _$_Confirmed implements _Confirmed {
  const _$_Confirmed();

  @override
  String toString() {
    return 'ConfirmOrderEvent.confirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Confirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() close,
    required TResult Function() receiptRequested,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? close,
    TResult Function()? receiptRequested,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_Close value) close,
    required TResult Function(_ReceiptRequested value) receiptRequested,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_Close value)? close,
    TResult Function(_ReceiptRequested value)? receiptRequested,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class _Confirmed implements ConfirmOrderEvent {
  const factory _Confirmed() = _$_Confirmed;
}

/// @nodoc
abstract class _$CloseCopyWith<$Res> {
  factory _$CloseCopyWith(_Close value, $Res Function(_Close) then) =
      __$CloseCopyWithImpl<$Res>;
}

/// @nodoc
class __$CloseCopyWithImpl<$Res> extends _$ConfirmOrderEventCopyWithImpl<$Res>
    implements _$CloseCopyWith<$Res> {
  __$CloseCopyWithImpl(_Close _value, $Res Function(_Close) _then)
      : super(_value, (v) => _then(v as _Close));

  @override
  _Close get _value => super._value as _Close;
}

/// @nodoc

class _$_Close implements _Close {
  const _$_Close();

  @override
  String toString() {
    return 'ConfirmOrderEvent.close()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Close);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() close,
    required TResult Function() receiptRequested,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? close,
    TResult Function()? receiptRequested,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_Close value) close,
    required TResult Function(_ReceiptRequested value) receiptRequested,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_Close value)? close,
    TResult Function(_ReceiptRequested value)? receiptRequested,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class _Close implements ConfirmOrderEvent {
  const factory _Close() = _$_Close;
}

/// @nodoc
abstract class _$ReceiptRequestedCopyWith<$Res> {
  factory _$ReceiptRequestedCopyWith(
          _ReceiptRequested value, $Res Function(_ReceiptRequested) then) =
      __$ReceiptRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReceiptRequestedCopyWithImpl<$Res>
    extends _$ConfirmOrderEventCopyWithImpl<$Res>
    implements _$ReceiptRequestedCopyWith<$Res> {
  __$ReceiptRequestedCopyWithImpl(
      _ReceiptRequested _value, $Res Function(_ReceiptRequested) _then)
      : super(_value, (v) => _then(v as _ReceiptRequested));

  @override
  _ReceiptRequested get _value => super._value as _ReceiptRequested;
}

/// @nodoc

class _$_ReceiptRequested implements _ReceiptRequested {
  const _$_ReceiptRequested();

  @override
  String toString() {
    return 'ConfirmOrderEvent.receiptRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReceiptRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() confirmed,
    required TResult Function() close,
    required TResult Function() receiptRequested,
  }) {
    return receiptRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? confirmed,
    TResult Function()? close,
    TResult Function()? receiptRequested,
    required TResult orElse(),
  }) {
    if (receiptRequested != null) {
      return receiptRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Confirmed value) confirmed,
    required TResult Function(_Close value) close,
    required TResult Function(_ReceiptRequested value) receiptRequested,
  }) {
    return receiptRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Confirmed value)? confirmed,
    TResult Function(_Close value)? close,
    TResult Function(_ReceiptRequested value)? receiptRequested,
    required TResult orElse(),
  }) {
    if (receiptRequested != null) {
      return receiptRequested(this);
    }
    return orElse();
  }
}

abstract class _ReceiptRequested implements ConfirmOrderEvent {
  const factory _ReceiptRequested() = _$_ReceiptRequested;
}

/// @nodoc
class _$ConfirmOrderStateTearOff {
  const _$ConfirmOrderStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Success success() {
    return const _Success();
  }

  _Failure failure() {
    return const _Failure();
  }

  _PageClosed pageClosed(int times) {
    return _PageClosed(
      times,
    );
  }

  _PdfRequested pdfRequested({required File receipt}) {
    return _PdfRequested(
      receipt: receipt,
    );
  }
}

/// @nodoc
const $ConfirmOrderState = _$ConfirmOrderStateTearOff();

/// @nodoc
mixin _$ConfirmOrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmOrderStateCopyWith<$Res> {
  factory $ConfirmOrderStateCopyWith(
          ConfirmOrderState value, $Res Function(ConfirmOrderState) then) =
      _$ConfirmOrderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConfirmOrderStateCopyWithImpl<$Res>
    implements $ConfirmOrderStateCopyWith<$Res> {
  _$ConfirmOrderStateCopyWithImpl(this._value, this._then);

  final ConfirmOrderState _value;
  // ignore: unused_field
  final $Res Function(ConfirmOrderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ConfirmOrderState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConfirmOrderState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ConfirmOrderState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ConfirmOrderState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'ConfirmOrderState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ConfirmOrderState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'ConfirmOrderState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ConfirmOrderState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$PageClosedCopyWith<$Res> {
  factory _$PageClosedCopyWith(
          _PageClosed value, $Res Function(_PageClosed) then) =
      __$PageClosedCopyWithImpl<$Res>;
  $Res call({int times});
}

/// @nodoc
class __$PageClosedCopyWithImpl<$Res>
    extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$PageClosedCopyWith<$Res> {
  __$PageClosedCopyWithImpl(
      _PageClosed _value, $Res Function(_PageClosed) _then)
      : super(_value, (v) => _then(v as _PageClosed));

  @override
  _PageClosed get _value => super._value as _PageClosed;

  @override
  $Res call({
    Object? times = freezed,
  }) {
    return _then(_PageClosed(
      times == freezed
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PageClosed implements _PageClosed {
  const _$_PageClosed(this.times);

  @override
  final int times;

  @override
  String toString() {
    return 'ConfirmOrderState.pageClosed(times: $times)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PageClosed &&
            (identical(other.times, times) ||
                const DeepCollectionEquality().equals(other.times, times)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(times);

  @JsonKey(ignore: true)
  @override
  _$PageClosedCopyWith<_PageClosed> get copyWith =>
      __$PageClosedCopyWithImpl<_PageClosed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return pageClosed(times);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (pageClosed != null) {
      return pageClosed(times);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return pageClosed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (pageClosed != null) {
      return pageClosed(this);
    }
    return orElse();
  }
}

abstract class _PageClosed implements ConfirmOrderState {
  const factory _PageClosed(int times) = _$_PageClosed;

  int get times => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PageClosedCopyWith<_PageClosed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PdfRequestedCopyWith<$Res> {
  factory _$PdfRequestedCopyWith(
          _PdfRequested value, $Res Function(_PdfRequested) then) =
      __$PdfRequestedCopyWithImpl<$Res>;
  $Res call({File receipt});
}

/// @nodoc
class __$PdfRequestedCopyWithImpl<$Res>
    extends _$ConfirmOrderStateCopyWithImpl<$Res>
    implements _$PdfRequestedCopyWith<$Res> {
  __$PdfRequestedCopyWithImpl(
      _PdfRequested _value, $Res Function(_PdfRequested) _then)
      : super(_value, (v) => _then(v as _PdfRequested));

  @override
  _PdfRequested get _value => super._value as _PdfRequested;

  @override
  $Res call({
    Object? receipt = freezed,
  }) {
    return _then(_PdfRequested(
      receipt: receipt == freezed
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_PdfRequested implements _PdfRequested {
  const _$_PdfRequested({required this.receipt});

  @override
  final File receipt;

  @override
  String toString() {
    return 'ConfirmOrderState.pdfRequested(receipt: $receipt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PdfRequested &&
            (identical(other.receipt, receipt) ||
                const DeepCollectionEquality().equals(other.receipt, receipt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(receipt);

  @JsonKey(ignore: true)
  @override
  _$PdfRequestedCopyWith<_PdfRequested> get copyWith =>
      __$PdfRequestedCopyWithImpl<_PdfRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() failure,
    required TResult Function(int times) pageClosed,
    required TResult Function(File receipt) pdfRequested,
  }) {
    return pdfRequested(receipt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? failure,
    TResult Function(int times)? pageClosed,
    TResult Function(File receipt)? pdfRequested,
    required TResult orElse(),
  }) {
    if (pdfRequested != null) {
      return pdfRequested(receipt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
    required TResult Function(_PageClosed value) pageClosed,
    required TResult Function(_PdfRequested value) pdfRequested,
  }) {
    return pdfRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    TResult Function(_PageClosed value)? pageClosed,
    TResult Function(_PdfRequested value)? pdfRequested,
    required TResult orElse(),
  }) {
    if (pdfRequested != null) {
      return pdfRequested(this);
    }
    return orElse();
  }
}

abstract class _PdfRequested implements ConfirmOrderState {
  const factory _PdfRequested({required File receipt}) = _$_PdfRequested;

  File get receipt => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PdfRequestedCopyWith<_PdfRequested> get copyWith =>
      throw _privateConstructorUsedError;
}
