import 'package:delivery_app/base/json_serializable.dart';

class TrackId implements GJsonSerializable<TrackId> {
  final String? value;

  TrackId({this.value});

  @override
  TrackId fromJson(Map<String, dynamic> json) => TrackId(value: json['value']);

  @override
  Map<String, dynamic> toJson() {
    return {'value': value};
  }
}
