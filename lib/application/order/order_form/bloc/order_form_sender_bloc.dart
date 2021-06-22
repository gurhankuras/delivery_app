import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_sender_event.dart';
part 'order_form_sender_state.dart';
part 'order_form_sender_bloc.freezed.dart';

class OrderFormSenderBloc
    extends Bloc<OrderFormSenderEvent, OrderFormSenderState> {
  OrderFormSenderBloc() : super(OrderFormSenderState.initial());

  @override
  Stream<OrderFormSenderState> mapEventToState(
    OrderFormSenderEvent event,
  ) async* {
    yield* event.map(saved: (e) async* {
      yield state.copyWith(showErrorMessages: true);
    });
  }
}
