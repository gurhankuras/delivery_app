part of 'order_form_person_bloc.dart';

@freezed
class OrderFormPersonState with _$OrderFormPersonState {
  const factory OrderFormPersonState({
    required Person person,
    // required bool isEditing,
    // required bool isSaving,
    // required Option<Either<OrderFailure, Unit>> saveFailureOrSuccessOption,
  }) = _OrderFormPersonState;

  factory OrderFormPersonState.initial() => OrderFormPersonState(
        person: Person.empty(),
        // showErrorMessages: false,
        // saveFailureOrSuccessOption: none(),
      );
}
