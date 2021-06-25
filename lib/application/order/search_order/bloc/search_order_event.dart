part of 'search_order_bloc.dart';

@freezed
class SearchOrderEvent with _$SearchOrderEvent {
  const factory SearchOrderEvent.searchButtonPressed(String trackNumber) =
      _SearchButtonPressed;
}
