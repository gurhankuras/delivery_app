import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/core/failures.dart';

abstract class AuthService {
  Future<Either<ValueFailure<String>, Unit>> signIn(
      String email, String password);
}
