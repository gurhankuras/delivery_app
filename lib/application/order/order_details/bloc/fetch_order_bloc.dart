import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:delivery_app/domain/order/value_objects.dart';
import 'package:delivery_app/infastructure/order/order_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:delivery_app/infastructure/services/cache_manager.dart';

import '../../../../domain/core/failures.dart';
import '../../../../domain/order/i_order_repository.dart';
import '../../../../domain/order/order.dart';

part 'fetch_order_bloc.freezed.dart';
part 'fetch_order_event.dart';
part 'fetch_order_state.dart';

class FetchOrderBloc extends Bloc<FetchOrderEvent, FetchOrderState> {
  final IOrderRepository orderRepository;
  final CacheService cache;
  FetchOrderBloc({
    required this.orderRepository,
    required this.cache,
  }) : super(FetchOrderState.initial());

  @override
  Stream<FetchOrderState> mapEventToState(
    FetchOrderEvent event,
  ) async* {
    yield* event.map(fetchingStarted: (e) async* {
      yield FetchOrderState.loading();
      final failureOrOrder = await orderRepository.getOne(e.trackId);
      yield* failureOrOrder.fold(
        (failure) async* {
          yield FetchOrderState.failure(failure);
        },
        (order) async* {
          yield FetchOrderState.success(order);
          // ignore: unawaited_futures
          cache.saveItem<TrackId>(
              order.orderId!, TrackIdDTO(value: order.orderId).toJson());
        },
      );
    });
  }
}
