import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/failures.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

abstract class AuthService {
  Future<Either<ValueFailure<String>, Unit>> signIn(
      String email, String password);
}

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

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  AuthService authService;

  SignInFormBloc(
    this.authService,
  ) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          email: e.email,
          emailFailure: validateEmail(e.email),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: e.password,
          passwordFailure: validatePassword(e.password),
        );
      },
      signInPressed: (e) async* {
        yield* validateForm(email: state.email, password: state.password).fold(
          // valid
          () async* {
            yield state.copyWith(
              failure: none(),
              showErrorMessages: true,
              isSubmitting: true,
            );
            final failureOrUnit =
                await authService.signIn(state.email, state.password);
            yield* failureOrUnit.fold((failure) async* {
              yield state.copyWith(
                isSubmitting: false,
              );
              // TODO: show failure in ui
            }, (_) async* {
              yield state.copyWith(
                isSubmitting: false,
              );
              // TODO: interact with auth bloc
            });
          },
          // invalid
          (failure) async* {
            yield state.copyWith(
              isSubmitting: false,
              failure: some(failure),
              showErrorMessages: true,
            );
          },
        );
      },
    );
  }
}

Option<ValueFailure<String>> validatePassword(String password) {
  const minLength = 6;
  if (password.length < minLength) {
    return some(
        ValueFailure.shortLength(failedValue: password, min: minLength));
  }
  return none();
}

final emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

Option<ValueFailure<String>> validateEmail(String email) {
  return emailRegex.hasMatch(email)
      ? none()
      : some(ValueFailure.invalidFormat(failedValue: email));
}

Option<ValueFailure<String>> validateForm({
  required String email,
  required String password,
}) {
  return validateEmail(email).fold(
    () => validatePassword(password).fold(
      () => none(),
      (failure) => some(failure),
    ),
    (failure) => some(failure),
  );
}
