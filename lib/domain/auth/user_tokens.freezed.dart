// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_tokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTokensTearOff {
  const _$UserTokensTearOff();

  _UserTokens call(
      {required String accessToken, required String refreshToken}) {
    return _UserTokens(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}

/// @nodoc
const $UserTokens = _$UserTokensTearOff();

/// @nodoc
mixin _$UserTokens {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserTokensCopyWith<UserTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokensCopyWith<$Res> {
  factory $UserTokensCopyWith(
          UserTokens value, $Res Function(UserTokens) then) =
      _$UserTokensCopyWithImpl<$Res>;
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$UserTokensCopyWithImpl<$Res> implements $UserTokensCopyWith<$Res> {
  _$UserTokensCopyWithImpl(this._value, this._then);

  final UserTokens _value;
  // ignore: unused_field
  final $Res Function(UserTokens) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserTokensCopyWith<$Res> implements $UserTokensCopyWith<$Res> {
  factory _$UserTokensCopyWith(
          _UserTokens value, $Res Function(_UserTokens) then) =
      __$UserTokensCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$UserTokensCopyWithImpl<$Res> extends _$UserTokensCopyWithImpl<$Res>
    implements _$UserTokensCopyWith<$Res> {
  __$UserTokensCopyWithImpl(
      _UserTokens _value, $Res Function(_UserTokens) _then)
      : super(_value, (v) => _then(v as _UserTokens));

  @override
  _UserTokens get _value => super._value as _UserTokens;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_UserTokens(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserTokens implements _UserTokens {
  _$_UserTokens({required this.accessToken, required this.refreshToken});

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'UserTokens(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserTokens &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

  @JsonKey(ignore: true)
  @override
  _$UserTokensCopyWith<_UserTokens> get copyWith =>
      __$UserTokensCopyWithImpl<_UserTokens>(this, _$identity);
}

abstract class _UserTokens implements UserTokens {
  factory _UserTokens(
      {required String accessToken,
      required String refreshToken}) = _$_UserTokens;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserTokensCopyWith<_UserTokens> get copyWith =>
      throw _privateConstructorUsedError;
}
