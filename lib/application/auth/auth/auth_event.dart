part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signedOut() = Initial;
  const factory AuthEvent.gotUserSignedIn() = GotUserSignedIn;
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;
}
