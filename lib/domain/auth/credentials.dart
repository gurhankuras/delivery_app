import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';

@freezed
class Credentials with _$Credentials {
  factory Credentials({
    required String email,
    required String password,
  }) = _Credentials;
}
