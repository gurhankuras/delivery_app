part of 'order_form_person_bloc.dart';

@freezed
class OrderFormPersonState with _$OrderFormPersonState {
  const factory OrderFormPersonState({
    required Person person,
    required Option<ValueFailure<String>> nameFailure,
    required Option<ValueFailure<String>> tcFailure,
    required Option<ValueFailure<String>> addressFailure,
    required Option<ValueFailure<String>> phoneNumberFailure,
    required Option<ValueFailure<dynamic>> overallFailure,
    // required bool isEditing,
    // required bool isSaving,
    // required Option<Either<OrderFailure, Unit>> saveFailureOrSuccessOption,
  }) = _OrderFormPersonState;

  factory OrderFormPersonState.initial() => OrderFormPersonState(
        person: Person.empty(),
        addressFailure: none(),
        nameFailure: none(),
        phoneNumberFailure: none(),
        tcFailure: none(),
        overallFailure: none(),
      );
}
