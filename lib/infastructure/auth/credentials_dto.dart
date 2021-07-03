import '../../domain/auth/credentials.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials_dto.freezed.dart';
part 'credentials_dto.g.dart';

@freezed
class CredentialsDTO with _$CredentialsDTO {
  const CredentialsDTO._();

  factory CredentialsDTO({
    String? email,
    String? password,
  }) = _CredentialsDTO;

  Credentials toDomain() => Credentials(
        email: email!,
        password: password!,
      );

  factory CredentialsDTO.fromDomain(Credentials userTokens) => CredentialsDTO(
        email: userTokens.email,
        password: userTokens.password,
      );

  factory CredentialsDTO.fromJson(Map<String, dynamic> json) =>
      _$CredentialsDTOFromJson(json);
}
