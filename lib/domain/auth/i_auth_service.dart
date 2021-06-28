import 'package:dartz/dartz.dart';

import 'auth_failure.dart';
import 'credentials.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, Unit>> signIn({required Credentials credentials});
  Future<Either<AuthFailure, Unit>> signUp({required Credentials credentials});
  Future<Either<AuthFailure, Unit>> getUserSignedIn();
  Future<void> logOut();
}
