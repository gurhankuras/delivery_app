import '../../../../core/constants.dart';
import '../../../../core/size_config.dart';
import 'person_address_form_field.dart';
import 'person_name_form_field.dart';
import 'person_phone_number_form_field.dart';
import 'person_tc_form_field.dart';
import 'package:flutter/material.dart';

class PersonFormSection<T> extends StatelessWidget {
  final String title;
  const PersonFormSection({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize),
      child: Column(
        children: [
          Text(title, style: sectionTextStyle(context)),
          const Divider(thickness: 1.5),
          PersonNameFormField<T>(),
          PersonTCFormField<T>(),
          PersonPhoneNumberFormField<T>(),
          PersonAddressFormField<T>(),
        ],
      ),
    );
  }
}
