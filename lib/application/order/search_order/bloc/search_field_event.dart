part of 'search_field_bloc.dart';

@freezed
class SearchFieldEvent with _$SearchFieldEvent {
  // const factory SearchFieldEvent.initial() = Initial;
  const factory SearchFieldEvent.infoButtonPressed() = InfoButtonPressed;
  const factory SearchFieldEvent.searchButtonPressed(String trackNumber) =
      SearchButtonPressed;
}
