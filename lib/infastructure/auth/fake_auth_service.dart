import 'package:dartz/dartz.dart';
import 'package:delivery_app/domain/auth/auth_service.dart';
import 'package:delivery_app/domain/core/failures.dart';

class FakeAuthService implements AuthService {
  static const fakeEmail = 'gurhankuras@hotmail.com';
  static const fakePassword = '123456789';
  @override
  Future<Either<ValueFailure<String>, Unit>> signIn(
      String email, String password) async {
    await Future.delayed(Duration(seconds: 2));
    if (email == fakeEmail && password == fakePassword) {
      return Future.value(right(unit));
    }
    return Future.value(
      left(ValueFailure.invalidFormat(failedValue: '')),
    );
  }
}
