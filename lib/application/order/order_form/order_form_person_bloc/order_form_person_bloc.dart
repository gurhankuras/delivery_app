import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart' hide Order;
import 'package:delivery_app/domain/order/order.dart';
import 'package:delivery_app/domain/order/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_person_event.dart';
part 'order_form_person_state.dart';
part 'order_form_person_bloc.freezed.dart';

class OrderFormPersonBloc
    extends Bloc<OrderFormPersonEvent, OrderFormPersonState> {
  OrderFormPersonBloc() : super(OrderFormPersonState.initial());

  @override
  Stream<OrderFormPersonState> mapEventToState(
    OrderFormPersonEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield state;
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          person: state.person.copyWith(name: e.name),
        );
      },
      tcChanged: (e) async* {
        yield state.copyWith(
          person: state.person.copyWith(
            trId: e.tc,
          ),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          person: state.person.copyWith(
            phoneNumber: e.phoneNumber,
          ),
        );
      },
      addressChanged: (e) async* {
        yield state.copyWith(
          person: state.person.copyWith(
            address: e.address,
          ),
        );
      },
    );
  }
}
