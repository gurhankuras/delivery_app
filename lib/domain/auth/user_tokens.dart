import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tokens.freezed.dart';

@freezed
class UserTokens with _$UserTokens {
  factory UserTokens({
    required String accessToken,
    required String refreshToken,
  }) = _UserTokens;
}
