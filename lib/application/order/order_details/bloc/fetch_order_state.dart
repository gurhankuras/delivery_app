part of 'fetch_order_bloc.dart';

@freezed
class FetchOrderState with _$FetchOrderState {
  const factory FetchOrderState.initial() = _Initial;
  const factory FetchOrderState.loading() = _Loading;
  const factory FetchOrderState.success(Order order) = _Success;
  const factory FetchOrderState.failure(ValueFailure<String> failure) =
      _Failure;
}
