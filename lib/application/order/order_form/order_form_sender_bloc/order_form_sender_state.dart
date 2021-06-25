part of 'order_form_sender_bloc.dart';

// @freezed
// class OrderFormSenderState with _$OrderFormSenderState {
//   const factory OrderFormSenderState({required bool showErrorMessages}) =
//       _OrderFormSenderState;

//   factory OrderFormSenderState.initial() =>
//       OrderFormSenderState(showErrorMessages: false);
// }

abstract class OrderFormSenderState {
  final bool showErrorMessages;

  OrderFormSenderState(this.showErrorMessages);
}

class OrderFormSenderState1 extends OrderFormSenderState {
  @override
  bool get showErrorMessages;

  OrderFormSenderState1({required bool showErrorMessages})
      : super(showErrorMessages);
}

class OrderFormSenderState2 extends OrderFormSenderState {
  @override
  bool get showErrorMessages;

  OrderFormSenderState2({required bool showErrorMessages})
      : super(showErrorMessages);
}

class OrderFormSenderCleaned extends OrderFormSenderState {
  @override
  bool get showErrorMessages;

  OrderFormSenderCleaned({required bool showErrorMessages})
      : super(showErrorMessages);
}
