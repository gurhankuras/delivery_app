// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_field_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchFieldEventTearOff {
  const _$SearchFieldEventTearOff();

  InfoButtonPressed infoButtonPressed() {
    return const InfoButtonPressed();
  }

  SearchButtonPressed searchButtonPressed(String trackNumber) {
    return SearchButtonPressed(
      trackNumber,
    );
  }
}

/// @nodoc
const $SearchFieldEvent = _$SearchFieldEventTearOff();

/// @nodoc
mixin _$SearchFieldEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infoButtonPressed,
    required TResult Function(String trackNumber) searchButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infoButtonPressed,
    TResult Function(String trackNumber)? searchButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoButtonPressed value) infoButtonPressed,
    required TResult Function(SearchButtonPressed value) searchButtonPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoButtonPressed value)? infoButtonPressed,
    TResult Function(SearchButtonPressed value)? searchButtonPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFieldEventCopyWith<$Res> {
  factory $SearchFieldEventCopyWith(
          SearchFieldEvent value, $Res Function(SearchFieldEvent) then) =
      _$SearchFieldEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchFieldEventCopyWithImpl<$Res>
    implements $SearchFieldEventCopyWith<$Res> {
  _$SearchFieldEventCopyWithImpl(this._value, this._then);

  final SearchFieldEvent _value;
  // ignore: unused_field
  final $Res Function(SearchFieldEvent) _then;
}

/// @nodoc
abstract class $InfoButtonPressedCopyWith<$Res> {
  factory $InfoButtonPressedCopyWith(
          InfoButtonPressed value, $Res Function(InfoButtonPressed) then) =
      _$InfoButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoButtonPressedCopyWithImpl<$Res>
    extends _$SearchFieldEventCopyWithImpl<$Res>
    implements $InfoButtonPressedCopyWith<$Res> {
  _$InfoButtonPressedCopyWithImpl(
      InfoButtonPressed _value, $Res Function(InfoButtonPressed) _then)
      : super(_value, (v) => _then(v as InfoButtonPressed));

  @override
  InfoButtonPressed get _value => super._value as InfoButtonPressed;
}

/// @nodoc

class _$InfoButtonPressed
    with DiagnosticableTreeMixin
    implements InfoButtonPressed {
  const _$InfoButtonPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchFieldEvent.infoButtonPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchFieldEvent.infoButtonPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InfoButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infoButtonPressed,
    required TResult Function(String trackNumber) searchButtonPressed,
  }) {
    return infoButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infoButtonPressed,
    TResult Function(String trackNumber)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (infoButtonPressed != null) {
      return infoButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoButtonPressed value) infoButtonPressed,
    required TResult Function(SearchButtonPressed value) searchButtonPressed,
  }) {
    return infoButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoButtonPressed value)? infoButtonPressed,
    TResult Function(SearchButtonPressed value)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (infoButtonPressed != null) {
      return infoButtonPressed(this);
    }
    return orElse();
  }
}

abstract class InfoButtonPressed implements SearchFieldEvent {
  const factory InfoButtonPressed() = _$InfoButtonPressed;
}

/// @nodoc
abstract class $SearchButtonPressedCopyWith<$Res> {
  factory $SearchButtonPressedCopyWith(
          SearchButtonPressed value, $Res Function(SearchButtonPressed) then) =
      _$SearchButtonPressedCopyWithImpl<$Res>;
  $Res call({String trackNumber});
}

/// @nodoc
class _$SearchButtonPressedCopyWithImpl<$Res>
    extends _$SearchFieldEventCopyWithImpl<$Res>
    implements $SearchButtonPressedCopyWith<$Res> {
  _$SearchButtonPressedCopyWithImpl(
      SearchButtonPressed _value, $Res Function(SearchButtonPressed) _then)
      : super(_value, (v) => _then(v as SearchButtonPressed));

  @override
  SearchButtonPressed get _value => super._value as SearchButtonPressed;

  @override
  $Res call({
    Object? trackNumber = freezed,
  }) {
    return _then(SearchButtonPressed(
      trackNumber == freezed
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchButtonPressed
    with DiagnosticableTreeMixin
    implements SearchButtonPressed {
  const _$SearchButtonPressed(this.trackNumber);

  @override
  final String trackNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchFieldEvent.searchButtonPressed(trackNumber: $trackNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchFieldEvent.searchButtonPressed'))
      ..add(DiagnosticsProperty('trackNumber', trackNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchButtonPressed &&
            (identical(other.trackNumber, trackNumber) ||
                const DeepCollectionEquality()
                    .equals(other.trackNumber, trackNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trackNumber);

  @JsonKey(ignore: true)
  @override
  $SearchButtonPressedCopyWith<SearchButtonPressed> get copyWith =>
      _$SearchButtonPressedCopyWithImpl<SearchButtonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() infoButtonPressed,
    required TResult Function(String trackNumber) searchButtonPressed,
  }) {
    return searchButtonPressed(trackNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? infoButtonPressed,
    TResult Function(String trackNumber)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(trackNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoButtonPressed value) infoButtonPressed,
    required TResult Function(SearchButtonPressed value) searchButtonPressed,
  }) {
    return searchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoButtonPressed value)? infoButtonPressed,
    TResult Function(SearchButtonPressed value)? searchButtonPressed,
    required TResult orElse(),
  }) {
    if (searchButtonPressed != null) {
      return searchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SearchButtonPressed implements SearchFieldEvent {
  const factory SearchButtonPressed(String trackNumber) = _$SearchButtonPressed;

  String get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchButtonPressedCopyWith<SearchButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchFieldStateTearOff {
  const _$SearchFieldStateTearOff();

  _SearchFieldState call(
      {required String trackId,
      required bool infoButtonPressed,
      required bool searchButtonPressed}) {
    return _SearchFieldState(
      trackId: trackId,
      infoButtonPressed: infoButtonPressed,
      searchButtonPressed: searchButtonPressed,
    );
  }
}

/// @nodoc
const $SearchFieldState = _$SearchFieldStateTearOff();

/// @nodoc
mixin _$SearchFieldState {
  String get trackId => throw _privateConstructorUsedError;
  bool get infoButtonPressed => throw _privateConstructorUsedError;
  bool get searchButtonPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFieldStateCopyWith<SearchFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFieldStateCopyWith<$Res> {
  factory $SearchFieldStateCopyWith(
          SearchFieldState value, $Res Function(SearchFieldState) then) =
      _$SearchFieldStateCopyWithImpl<$Res>;
  $Res call({String trackId, bool infoButtonPressed, bool searchButtonPressed});
}

/// @nodoc
class _$SearchFieldStateCopyWithImpl<$Res>
    implements $SearchFieldStateCopyWith<$Res> {
  _$SearchFieldStateCopyWithImpl(this._value, this._then);

  final SearchFieldState _value;
  // ignore: unused_field
  final $Res Function(SearchFieldState) _then;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? infoButtonPressed = freezed,
    Object? searchButtonPressed = freezed,
  }) {
    return _then(_value.copyWith(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
      infoButtonPressed: infoButtonPressed == freezed
          ? _value.infoButtonPressed
          : infoButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      searchButtonPressed: searchButtonPressed == freezed
          ? _value.searchButtonPressed
          : searchButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchFieldStateCopyWith<$Res>
    implements $SearchFieldStateCopyWith<$Res> {
  factory _$SearchFieldStateCopyWith(
          _SearchFieldState value, $Res Function(_SearchFieldState) then) =
      __$SearchFieldStateCopyWithImpl<$Res>;
  @override
  $Res call({String trackId, bool infoButtonPressed, bool searchButtonPressed});
}

/// @nodoc
class __$SearchFieldStateCopyWithImpl<$Res>
    extends _$SearchFieldStateCopyWithImpl<$Res>
    implements _$SearchFieldStateCopyWith<$Res> {
  __$SearchFieldStateCopyWithImpl(
      _SearchFieldState _value, $Res Function(_SearchFieldState) _then)
      : super(_value, (v) => _then(v as _SearchFieldState));

  @override
  _SearchFieldState get _value => super._value as _SearchFieldState;

  @override
  $Res call({
    Object? trackId = freezed,
    Object? infoButtonPressed = freezed,
    Object? searchButtonPressed = freezed,
  }) {
    return _then(_SearchFieldState(
      trackId: trackId == freezed
          ? _value.trackId
          : trackId // ignore: cast_nullable_to_non_nullable
              as String,
      infoButtonPressed: infoButtonPressed == freezed
          ? _value.infoButtonPressed
          : infoButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
      searchButtonPressed: searchButtonPressed == freezed
          ? _value.searchButtonPressed
          : searchButtonPressed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchFieldState
    with DiagnosticableTreeMixin
    implements _SearchFieldState {
  const _$_SearchFieldState(
      {required this.trackId,
      required this.infoButtonPressed,
      required this.searchButtonPressed});

  @override
  final String trackId;
  @override
  final bool infoButtonPressed;
  @override
  final bool searchButtonPressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchFieldState(trackId: $trackId, infoButtonPressed: $infoButtonPressed, searchButtonPressed: $searchButtonPressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchFieldState'))
      ..add(DiagnosticsProperty('trackId', trackId))
      ..add(DiagnosticsProperty('infoButtonPressed', infoButtonPressed))
      ..add(DiagnosticsProperty('searchButtonPressed', searchButtonPressed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFieldState &&
            (identical(other.trackId, trackId) ||
                const DeepCollectionEquality()
                    .equals(other.trackId, trackId)) &&
            (identical(other.infoButtonPressed, infoButtonPressed) ||
                const DeepCollectionEquality()
                    .equals(other.infoButtonPressed, infoButtonPressed)) &&
            (identical(other.searchButtonPressed, searchButtonPressed) ||
                const DeepCollectionEquality()
                    .equals(other.searchButtonPressed, searchButtonPressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trackId) ^
      const DeepCollectionEquality().hash(infoButtonPressed) ^
      const DeepCollectionEquality().hash(searchButtonPressed);

  @JsonKey(ignore: true)
  @override
  _$SearchFieldStateCopyWith<_SearchFieldState> get copyWith =>
      __$SearchFieldStateCopyWithImpl<_SearchFieldState>(this, _$identity);
}

abstract class _SearchFieldState implements SearchFieldState {
  const factory _SearchFieldState(
      {required String trackId,
      required bool infoButtonPressed,
      required bool searchButtonPressed}) = _$_SearchFieldState;

  @override
  String get trackId => throw _privateConstructorUsedError;
  @override
  bool get infoButtonPressed => throw _privateConstructorUsedError;
  @override
  bool get searchButtonPressed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchFieldStateCopyWith<_SearchFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
