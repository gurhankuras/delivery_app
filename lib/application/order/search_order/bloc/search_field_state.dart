part of 'search_field_bloc.dart';

@freezed
class SearchFieldState with _$SearchFieldState {
  const factory SearchFieldState({
    required String trackId,
    required bool infoButtonPressed,
    required bool searchButtonPressed,
  }) = _SearchFieldState;
  factory SearchFieldState.initial() => SearchFieldState(
        trackId: '',
        infoButtonPressed: false,
        searchButtonPressed: false,
      );
}
