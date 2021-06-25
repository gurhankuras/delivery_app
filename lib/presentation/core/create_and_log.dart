import 'logger.dart';

T createAndLog<T>(T Function() f) {
  getLogger('PROVIDER').d('$T created');
  return f();
}
