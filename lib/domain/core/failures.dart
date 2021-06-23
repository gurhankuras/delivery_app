import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    @Default('Value is exceeds specified length') String message,
    required int max,
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty(
      {required T failedValue,
      @Default('Value is empty') String message}) = Empty<T>;
}
