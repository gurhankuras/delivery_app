part of 'confirm_order_bloc.dart';

@freezed
class ConfirmOrderState with _$ConfirmOrderState {
  const factory ConfirmOrderState.initial() = _Initial;
  const factory ConfirmOrderState.loading() = _Loading;
  const factory ConfirmOrderState.success() = _Success;
  const factory ConfirmOrderState.failure() = _Failure;
  const factory ConfirmOrderState.pageClosed(int times) = _PageClosed;
  const factory ConfirmOrderState.pdfRequested({required File receipt}) =
      _PdfRequested;
}
