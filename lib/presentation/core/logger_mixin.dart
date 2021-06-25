import 'package:logger/logger.dart';

import 'logger.dart';

mixin LoggerMixin<T> {
  final Logger logger = getLogger(T.toString());
}
