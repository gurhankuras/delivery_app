import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_sender_event.dart';
part 'order_form_sender_state.dart';
part 'order_form_sender_bloc.freezed.dart';

class OrderFormSenderBloc
    extends Bloc<OrderFormSenderEvent, OrderFormSenderState> {
  OrderFormSenderBloc()
      : super(OrderFormSenderState1(showErrorMessages: false));

  @override
  Stream<OrderFormSenderState> mapEventToState(
    OrderFormSenderEvent event,
  ) async* {
    yield* event.map(
      saved: (e) async* {
        if (e is OrderFormSenderState1) {
          yield OrderFormSenderState2(showErrorMessages: true);
        } else {
          yield OrderFormSenderState1(showErrorMessages: true);
        }
        // if (state.deneme == 1) {
        //   yield OrderFormSenderState(showErrorMessages: true, deneme: 0);
        // } else {
        //   yield OrderFormSenderState(showErrorMessages: true, deneme: 1);
        // }
      },
      cleaned: (e) async* {
        yield OrderFormSenderCleaned(
            showErrorMessages: state.showErrorMessages);
      },
    );
  }
}
