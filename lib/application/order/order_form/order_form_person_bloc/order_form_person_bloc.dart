import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import '../bloc/order_form_sender_bloc.dart';
import '../../../../domain/core/failures.dart';
import '../../../../domain/order/validators.dart';
import '../../../../domain/order/order.dart';
import '../../../../domain/order/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_person_event.dart';
part 'order_form_person_state.dart';
part 'order_form_person_bloc.freezed.dart';

class Sender {}

class Receiver {}

class OrderFormPersonBloc<T>
    extends Bloc<OrderFormPersonEvent, OrderFormPersonState> {
  StreamSubscription? subs;
  OrderFormSenderBloc bloc;

  OrderFormPersonBloc(this.bloc) : super(OrderFormPersonState.initial()) {
    add(OrderFormPersonEvent.validated());
    subs = bloc.stream.listen((state) {
      print('BURAYA GIRDI');

      if (!(state is OrderFormSenderCleaned) && state.showErrorMessages) {
        add(OrderFormPersonEvent.validated());
      }
    });
  }

  @override
  Future<void> close() async {
    // ignore: unawaited_futures
    super.close();
    // ignore: unawaited_futures
    subs?.cancel();
  }

  @override
  Stream<OrderFormPersonState> mapEventToState(
    OrderFormPersonEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state;
      },
      validated: (e) async* {
        final validator = PersonValidator(state.person);
        yield state.copyWith(
          addressFailure: validator.address(),
          phoneNumberFailure: validator.phoneNumber(),
          tcFailure: validator.trId(),
          nameFailure: validator.name(),
          overallFailure: validateAllPerson(validator),
        );

        state.overallFailure
            .fold(() => bloc.add(OrderFormSenderEvent.cleaned()), (a) => null);
      },
      nameChanged: (e) async* {
        final person = state.person.copyWith(name: e.name);
        final validator = PersonValidator(person);

        yield state.copyWith(
            person: person,
            nameFailure: validator.name(),
            overallFailure: validateAllPerson(validator));
      },
      tcChanged: (e) async* {
        final person = state.person.copyWith(
          trId: e.tc,
        );
        final validator = PersonValidator(person);

        yield state.copyWith(
            person: person,
            tcFailure: validator.trId(),
            overallFailure: validateAllPerson(validator));
      },
      phoneNumberChanged: (e) async* {
        final person = state.person.copyWith(
          phoneNumber: e.phoneNumber,
        );
        final validator = PersonValidator(person);
        yield state.copyWith(
            person: person,
            phoneNumberFailure: validator.phoneNumber(),
            overallFailure: validateAllPerson(validator));
      },
      addressChanged: (e) async* {
        final person = state.person.copyWith(
          address: e.address,
        );
        final validator = PersonValidator(person);
        yield state.copyWith(
            person: person,
            addressFailure: validator.address(),
            overallFailure: validateAllPerson(validator));
      },
    );
  }

  Option<ValueFailure<dynamic>> validateAllPerson(PersonValidator validator) {
    return (validator.address().isSome() ||
            validator.name().isSome() ||
            validator.phoneNumber().isSome() ||
            validator.trId().isSome())
        ? some(
            ValueFailure.empty(failedValue: 'FAILED'),
          )
        : none();
  }
}
