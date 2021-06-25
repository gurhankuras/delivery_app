import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'order_form_sender_bloc.freezed.dart';
part 'order_form_sender_event.dart';
part 'order_form_sender_state.dart';

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
      },
      cleaned: (e) async* {
        yield OrderFormSenderCleaned(
            showErrorMessages: state.showErrorMessages);
      },
    );
  }
}


/**
 void continueHandler(BuildContext context) {
    context.read<OrderFormSenderBloc>().add(OrderFormSenderEvent.saved());
    context.read<OrderFormPersonBloc<Sender>>().state.overallFailure.fold(
          () => context
              .read<OrderFormPersonBloc<Receiver>>()
              .state
              .overallFailure
              .fold(
                () => setOrder(context),
                (a) => null,
              ),
          (a) => null,
        );
  }

  void setOrder(BuildContext context) {
    final assembler = OrderAssembler();
    final order = assembler.assemble(
      sender: context.read<OrderFormPersonBloc<Sender>>().state.person,
      receiver: context.read<OrderFormPersonBloc<Receiver>>().state.person,
      packageInfo: context.read<OrderFormPackageBloc>().state.package,
    );
    context.read<OrderFormData>().saveOrder(order);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SendPackageConfirmationPage(),
      ),
    );
  }


 */