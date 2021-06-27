// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_tokens_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserTokensDTO _$UserTokensDTOFromJson(Map<String, dynamic> json) {
  return _UserTokensDTO.fromJson(json);
}

/// @nodoc
class _$UserTokensDTOTearOff {
  const _$UserTokensDTOTearOff();

  _UserTokensDTO call(
      {required String? accessToken, required String? refreshToken}) {
    return _UserTokensDTO(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

  UserTokensDTO fromJson(Map<String, Object> json) {
    return UserTokensDTO.fromJson(json);
  }
}

/// @nodoc
const $UserTokensDTO = _$UserTokensDTOTearOff();

/// @nodoc
mixin _$UserTokensDTO {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTokensDTOCopyWith<UserTokensDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTokensDTOCopyWith<$Res> {
  factory $UserTokensDTOCopyWith(
          UserTokensDTO value, $Res Function(UserTokensDTO) then) =
      _$UserTokensDTOCopyWithImpl<$Res>;
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class _$UserTokensDTOCopyWithImpl<$Res>
    implements $UserTokensDTOCopyWith<$Res> {
  _$UserTokensDTOCopyWithImpl(this._value, this._then);

  final UserTokensDTO _value;
  // ignore: unused_field
  final $Res Function(UserTokensDTO) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserTokensDTOCopyWith<$Res>
    implements $UserTokensDTOCopyWith<$Res> {
  factory _$UserTokensDTOCopyWith(
          _UserTokensDTO value, $Res Function(_UserTokensDTO) then) =
      __$UserTokensDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class __$UserTokensDTOCopyWithImpl<$Res>
    extends _$UserTokensDTOCopyWithImpl<$Res>
    implements _$UserTokensDTOCopyWith<$Res> {
  __$UserTokensDTOCopyWithImpl(
      _UserTokensDTO _value, $Res Function(_UserTokensDTO) _then)
      : super(_value, (v) => _then(v as _UserTokensDTO));

  @override
  _UserTokensDTO get _value => super._value as _UserTokensDTO;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_UserTokensDTO(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserTokensDTO extends _UserTokensDTO {
  _$_UserTokensDTO({required this.accessToken, required this.refreshToken})
      : super._();

  factory _$_UserTokensDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_UserTokensDTOFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'UserTokensDTO(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserTokensDTO &&
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
  _$UserTokensDTOCopyWith<_UserTokensDTO> get copyWith =>
      __$UserTokensDTOCopyWithImpl<_UserTokensDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserTokensDTOToJson(this);
  }
}

abstract class _UserTokensDTO extends UserTokensDTO {
  factory _UserTokensDTO(
      {required String? accessToken,
      required String? refreshToken}) = _$_UserTokensDTO;
  _UserTokensDTO._() : super._();

  factory _UserTokensDTO.fromJson(Map<String, dynamic> json) =
      _$_UserTokensDTO.fromJson;

  @override
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserTokensDTOCopyWith<_UserTokensDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
