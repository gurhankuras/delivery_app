abstract class IKeyGenerator {
  String fromString(String str);
  String generate<T>(String id);
  bool hasMatch<T>(String key);
}
