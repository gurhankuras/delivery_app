part of 'confirm_order_bloc.dart';

@freezed
class ConfirmOrderEvent with _$ConfirmOrderEvent {
  const factory ConfirmOrderEvent.confirmed() = _Confirmed;
  const factory ConfirmOrderEvent.close() = _Close;
  const factory ConfirmOrderEvent.receiptRequested() = _ReceiptRequested;
}
