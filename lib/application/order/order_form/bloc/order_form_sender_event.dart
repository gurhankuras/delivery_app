part of 'order_form_sender_bloc.dart';

@freezed
class OrderFormSenderEvent with _$OrderFormSenderEvent {
  const factory OrderFormSenderEvent.saved() = _Saved;
}
