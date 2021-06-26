import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_failures.freezed.dart';

@freezed
class GeneralFailure<T> with _$GeneralFailure<T> {
  const factory GeneralFailure.notFound({
    required T notFoundValue,
    @Default('Not found') String message,
  }) = NotFound<T>;
}
