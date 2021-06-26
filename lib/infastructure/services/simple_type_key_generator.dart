import 'package:delivery_app/domain/core/i_key_generator.dart';

/// [T] is important!! Don't omit it
/// works with id that's composed of numeric characters only
class SimpleTypeKeyGenerator extends IKeyGenerator {
  @override
  String fromString(String str) {
    return str;
  }

  // key = Type Name + id
  @override
  String generate<T>(String id) => '${T.toString()}$id';

  /// checks if given key match the key pattern
  @override
  bool hasMatch<T>(String key) {
    final keyRegex = RegExp('^$T[0-9]+\$');
    return keyRegex.hasMatch(key);
  }
}
