part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required String email,
    required String password,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<ValueFailure<String>> emailFailure,
    required Option<ValueFailure<String>> passwordFailure,
    required Option<ValueFailure<String>> failure,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        email: '',
        password: '',
        showErrorMessages: false,
        isSubmitting: false,
        emailFailure: validateEmail(''),
        passwordFailure: validatePassword(''),
        failure: validateForm(email: '', password: ''),
      );
}
