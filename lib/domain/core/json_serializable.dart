abstract class GJsonSerializable<T> {
  T fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
