import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/auth/auth_failure.dart';
import 'package:delivery_app/domain/auth/credentials.dart';
import 'package:delivery_app/infastructure/auth/credentials_dto.dart';

abstract class IAuthService {
  Future<Either<AuthFailure, Unit>> signIn({required Credentials credentials});
  Future<Either<AuthFailure, Unit>> signUp({required Credentials credentials});
}
