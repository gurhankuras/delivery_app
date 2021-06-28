import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/credentials.dart';
import '../../../domain/auth/i_auth_service.dart';
import '../../../domain/core/failures.dart';
import '../../../presentation/core/logger.dart';
import '../auth/auth_bloc.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  IAuthService authService;
  AuthBloc authBloc;

  SignInFormBloc({
    required this.authService,
    required this.authBloc,
  }) : super(SignInFormState.initial()) {
    log.w('SignInFormBloc created');
  }

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
            final failureOrUnit = await authService.signIn(
              credentials: Credentials(
                email: state.email,
                password: state.password,
              ),
            );

            yield* failureOrUnit.fold(
              // server-app failure
              (failure) async* {
                yield state.copyWith(
                  isSubmitting: false,
                  failure: failure.map(
                    serverError: (f) => some(ValueFailure.empty(
                        failedValue: '', message: 'Server Error')),
                    emailAlreadyInUse: (f) => some(ValueFailure.empty(
                        failedValue: '', message: 'Server Error')),
                    invalidEmailAndPasswordCombination: (f) => some(
                        ValueFailure.empty(
                            failedValue: '', message: 'Server Error')),
                    tokenNotFound: (f) => some(ValueFailure.empty(
                        failedValue: '', message: 'Server Error')),
                    unexpected: (f) => some(ValueFailure.empty(
                        failedValue: '', message: 'Server Error')),
                    notConnected: (f) => some(ValueFailure.empty(
                        failedValue: '', message: 'No Internet Connection')),
                  ),
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
  return option(
    password.length < minLength,
    ValueFailure.shortLength(failedValue: password, min: minLength),
  );
}

final emailRegex = RegExp(
    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

Option<ValueFailure<String>> validateEmail(String email) {
  return option(
    !emailRegex.hasMatch(email),
    ValueFailure.invalidFormat(failedValue: email),
  );
  // return emailRegex.hasMatch(email)
  // ? none()
  // : ;
}

Option<ValueFailure<String>> validateForm({
  required String email,
  required String password,
}) {
  return validateEmail(email).orElse(() => validatePassword(password));
}
