import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/domain/order/i_order_repository.dart';
import 'package:delivery_app/domain/order/order.dart';
import 'package:delivery_app/domain/order/value_objects.dart';
import 'package:delivery_app/presentation/core/logger.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_order_event.dart';
part 'update_order_state.dart';
part 'update_order_bloc.freezed.dart';

class UpdateOrderBloc extends Bloc<UpdateOrderEvent, UpdateOrderState> {
  final IOrderRepository repository;
  final Order order;
  UpdateOrderBloc({
    required this.order,
    required this.repository,
  }) : super(UpdateOrderState.initial(order)) {
    log.w('UpdateOrderBloc created');
  }

  @override
  Stream<UpdateOrderState> mapEventToState(
    UpdateOrderEvent event,
  ) async* {
    yield* event.map(
      eventMessageChanged: (e) async* {
        yield state.copyWith(
          status: state.status.copyWith(
            event: e.message,
          ),
        );
      },
      statusChanged: (e) async* {
        yield state.copyWith(
          status: state.status.copyWith(
            status: e.status,
          ),
        );
      },
      orderStateAdded: (e) async* {
        yield state.copyWith(
          editedOrder: state.editedOrder.copyWith(
            orderStates: state.editedOrder.orderStates?.sublist(0)
              ?..add(state.status),
          ),
        );
      },
      submitted: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final failureOrUnit = await repository.update(state.editedOrder);
        yield* failureOrUnit.fold(
          (f) async* {
            yield state.copyWith(isLoading: false);
          },
          (_) async* {
            yield state.copyWith(isLoading: false);
          },
        );
      },
      closed: (e) async* {},
    );
  }
}
