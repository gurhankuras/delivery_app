import '../../domain/auth/user_tokens.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tokens_dto.freezed.dart';
part 'user_tokens_dto.g.dart';

@freezed
class UserTokensDTO with _$UserTokensDTO {
  const UserTokensDTO._();

  factory UserTokensDTO({
    required String? accessToken,
    required String? refreshToken,
  }) = _UserTokensDTO;

  UserTokens toDomain() => UserTokens(
        accessToken: accessToken!,
        refreshToken: refreshToken!,
      );

  factory UserTokensDTO.fromDomain(UserTokens userTokens) => UserTokensDTO(
        accessToken: userTokens.accessToken,
        refreshToken: userTokens.refreshToken,
      );

  factory UserTokensDTO.fromJson(Map<String, dynamic> json) =>
      _$UserTokensDTOFromJson(json);
}
