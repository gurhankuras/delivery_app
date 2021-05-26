import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  String name;
  String phoneNumber;
  String trId;
  String address;

  Person({
    required this.name,
    required this.phoneNumber,
    required this.trId,
    required this.address,
  });

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
  Map<String, dynamic> toJson() => _$PersonToJson(this);
}
