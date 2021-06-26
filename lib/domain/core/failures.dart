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

  const factory ValueFailure.invalidFormat({
    required T failedValue,
    @Default('Invalid Format') String message,
  }) = InvalidFormat<T>;

  const factory ValueFailure.mustBeNCharacters({
    required T failedValue,
    @Default('Must be N characters') String message,
    required int n,
  }) = MustBeNCharacters<T>;

  const factory ValueFailure.shortLength({
    required T failedValue,
    @Default('Must be at least N characters long') String message,
    required int min,
  }) = Short<T>;
}
