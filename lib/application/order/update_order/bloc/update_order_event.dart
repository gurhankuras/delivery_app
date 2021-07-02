part of 'update_order_bloc.dart';

@freezed
class UpdateOrderEvent with _$UpdateOrderEvent {
  const factory UpdateOrderEvent.eventMessageChanged(String message) =
      EventMessageChanged;
  const factory UpdateOrderEvent.statusChanged(int status) = StatusChanged;
  const factory UpdateOrderEvent.orderStateAdded() = OrderStateAdded;
  const factory UpdateOrderEvent.submitted() = Submitted;
  const factory UpdateOrderEvent.closed() = Closed;
}
