import 'package:freezed_annotation/freezed_annotation.dart';

// part 'order.g.dart';
part 'statistics.freezed.dart';

@freezed
class Statistics with _$Statistics {
  const Statistics._();
  factory Statistics({
    @Default([]) List<String> labels,
    @Default([]) List<num> values,
  }) = _Statistics;

  // factory Statistics.empty() => Statistics(
  //     );
}
