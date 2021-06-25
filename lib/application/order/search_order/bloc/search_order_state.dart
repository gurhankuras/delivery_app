part of 'search_order_bloc.dart';

@freezed
class SearchOrderState with _$SearchOrderState {
  const factory SearchOrderState.initial() = _Initial;
  const factory SearchOrderState.invalidFormat(ValueFailure<String> failure) =
      _InvalidFormat;
  const factory SearchOrderState.navigating(String trackId) = _Navigating;
}
