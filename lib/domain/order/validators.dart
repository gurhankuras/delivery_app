import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import 'value_objects.dart';

class PersonValidator {
  final Person person;

  PersonValidator(this.person);

  Option<ValueFailure<String>> name() {
    final name = person.name;
    if (name.isEmpty) {
      return some(ValueFailure.empty(
        failedValue: name,
        message: 'This field is required',
      ));
    }
    return none();
  }

  Option<ValueFailure<String>> address() {
    final address = person.address;
    if (address.isEmpty) {
      return some(
        ValueFailure.empty(
          failedValue: address,
          message: 'This field is required',
        ),
      );
    }
    return none();
  }

  Option<ValueFailure<String>> phoneNumber() {
    final phoneNumber = person.phoneNumber;
    if (phoneNumber.isEmpty) {
      return some(ValueFailure.empty(
        failedValue: phoneNumber,
        message: 'This field is required',
      ));
    }
    return none();
  }

  Option<ValueFailure<String>> trId() {
    final trId = person.trId;
    if (trId.isEmpty) {
      return some(ValueFailure.empty(
        failedValue: trId,
        message: 'This field is required',
      ));
    }
    if (trId.length < 11) {
      return some(ValueFailure.exceedingLength(failedValue: trId, max: 11));
    }
    return none();
  }
}
