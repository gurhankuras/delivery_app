part of 'order_form_sender_bloc.dart';

@freezed
class OrderFormSenderState with _$OrderFormSenderState {
  const factory OrderFormSenderState({required bool showErrorMessages}) =
      _OrderFormSenderState;

  factory OrderFormSenderState.initial() =>
      OrderFormSenderState(showErrorMessages: false);
}
