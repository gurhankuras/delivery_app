part of 'fetch_order_bloc.dart';

@freezed
class FetchOrderEvent with _$FetchOrderEvent {
  const factory FetchOrderEvent.fetchingStarted(String trackId) =
      _FetchingStarted;
}
