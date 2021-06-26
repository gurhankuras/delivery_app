import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../core/size_config.dart';
import '../../order/send_order/send_package_form_page/components/input_decoration.dart';

class SignInEmailFormField extends StatelessWidget {
  const SignInEmailFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration:
            getTextInputDecoration(iconData: Icons.person, labelText: 'Email'),
        onChanged: (value) => context.read<SignInFormBloc>().add(
              SignInFormEvent.emailChanged(value),
            ),
        validator: (value) =>
            validateEmail(value!).fold(() => null, (a) => a.message),
      ),
    );
  }
}
