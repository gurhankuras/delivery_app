part of 'update_order_bloc.dart';

@freezed
class UpdateOrderState with _$UpdateOrderState {
  const factory UpdateOrderState({
    required bool isLoading,
    required OrderStatus status,
    required Order fetchedOrder,
    required Order editedOrder,
    // required List<OrderStatus> addedOrderStates,
  }) = _UpdateOrderState;

  factory UpdateOrderState.initial(Order order) => UpdateOrderState(
        isLoading: false,
        status: OrderStatus(
          status: order.orderStates?.last.status ?? 0,
          event: '',
          timeStamp: DateTime.now(),
        ),
        fetchedOrder: order,
        editedOrder: order.copyWith(),
      );
}
