import 'dart:math';

import 'package:faker/faker.dart';

final faker = Faker();
final random = Random();
// fakeForm() {
//   faker.address.
// }

class FormFaker {
  String address() {
    return """${faker.address.state()} ${faker.address.country()} ${int.parse(faker.address.buildingNumber()) % 20} ${int.parse(faker.address.buildingNumber()) % 20} ${faker.address.neighborhood()} ${faker.address.streetAddress()}""";
  }

  String phoneNumber() {
    return faker.phoneNumber.us();
  }

  String tc() {
    var tc = <int>[];
    for (var i = 0; i < 11; ++i) {
      tc.add(random.nextInt(10));
    }
    return tc.join('');
  }

  String name() {
    return '${faker.person.firstName()} ${faker.person.lastName()}';
  }

  String packageName() {
    return faker.food.dish();
  }
}
