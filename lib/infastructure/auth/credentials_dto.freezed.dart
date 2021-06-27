// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credentials_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CredentialsDTO _$CredentialsDTOFromJson(Map<String, dynamic> json) {
  return _CredentialsDTO.fromJson(json);
}

/// @nodoc
class _$CredentialsDTOTearOff {
  const _$CredentialsDTOTearOff();

  _CredentialsDTO call({String? email, String? password}) {
    return _CredentialsDTO(
      email: email,
      password: password,
    );
  }

  CredentialsDTO fromJson(Map<String, Object> json) {
    return CredentialsDTO.fromJson(json);
  }
}

/// @nodoc
const $CredentialsDTO = _$CredentialsDTOTearOff();

/// @nodoc
mixin _$CredentialsDTO {
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialsDTOCopyWith<CredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsDTOCopyWith<$Res> {
  factory $CredentialsDTOCopyWith(
          CredentialsDTO value, $Res Function(CredentialsDTO) then) =
      _$CredentialsDTOCopyWithImpl<$Res>;
  $Res call({String? email, String? password});
}

/// @nodoc
class _$CredentialsDTOCopyWithImpl<$Res>
    implements $CredentialsDTOCopyWith<$Res> {
  _$CredentialsDTOCopyWithImpl(this._value, this._then);

  final CredentialsDTO _value;
  // ignore: unused_field
  final $Res Function(CredentialsDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CredentialsDTOCopyWith<$Res>
    implements $CredentialsDTOCopyWith<$Res> {
  factory _$CredentialsDTOCopyWith(
          _CredentialsDTO value, $Res Function(_CredentialsDTO) then) =
      __$CredentialsDTOCopyWithImpl<$Res>;
  @override
  $Res call({String? email, String? password});
}

/// @nodoc
class __$CredentialsDTOCopyWithImpl<$Res>
    extends _$CredentialsDTOCopyWithImpl<$Res>
    implements _$CredentialsDTOCopyWith<$Res> {
  __$CredentialsDTOCopyWithImpl(
      _CredentialsDTO _value, $Res Function(_CredentialsDTO) _then)
      : super(_value, (v) => _then(v as _CredentialsDTO));

  @override
  _CredentialsDTO get _value => super._value as _CredentialsDTO;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_CredentialsDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CredentialsDTO extends _CredentialsDTO {
  _$_CredentialsDTO({this.email, this.password}) : super._();

  factory _$_CredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_CredentialsDTOFromJson(json);

  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString() {
    return 'CredentialsDTO(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialsDTO &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$CredentialsDTOCopyWith<_CredentialsDTO> get copyWith =>
      __$CredentialsDTOCopyWithImpl<_CredentialsDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CredentialsDTOToJson(this);
  }
}

abstract class _CredentialsDTO extends CredentialsDTO {
  factory _CredentialsDTO({String? email, String? password}) =
      _$_CredentialsDTO;
  _CredentialsDTO._() : super._();

  factory _CredentialsDTO.fromJson(Map<String, dynamic> json) =
      _$_CredentialsDTO.fromJson;

  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialsDTOCopyWith<_CredentialsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
