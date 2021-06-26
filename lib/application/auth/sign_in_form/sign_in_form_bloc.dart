import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:delivery_app/application/auth/auth/auth_bloc.dart';
import 'package:delivery_app/domain/auth/auth_service.dart';

import '../../../domain/core/failures.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  AuthService authService;
  AuthBloc authBloc;

  SignInFormBloc(
    this.authService,
    this.authBloc,
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
          // valid form
          () async* {
            yield state.copyWith(
              failure: none(),
              showErrorMessages: true,
              isSubmitting: true,
            );
            final failureOrUnit =
                await authService.signIn(state.email, state.password);

            yield* failureOrUnit.fold(
              // server-app failure
              (failure) async* {
                yield state.copyWith(
                  isSubmitting: false,
                );
                // TODO: show failure in ui
              },
              // server-app success
              (_) async* {
                yield state.copyWith(
                  isSubmitting: false,
                );
                authBloc.add(AuthEvent.gotUserSignedIn());
              },
            );
          },
          // invalid form
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
