import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'order_form_sender_bloc.freezed.dart';
part 'order_form_sender_event.dart';
part 'order_form_sender_state.dart';

@injectable
class OrderFormSenderBloc
    extends Bloc<OrderFormSenderEvent, OrderFormSenderState> {
  OrderFormSenderBloc()
      : super(OrderFormSenderState1(showErrorMessages: false)) {
    log.w('OrderFormSenderBloc created');
  }

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
      },
      cleaned: (e) async* {
        yield OrderFormSenderCleaned(
            showErrorMessages: state.showErrorMessages);
      },
    );
  }
}
