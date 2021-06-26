import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../core/size_config.dart';
import '../../order/send_order/send_package_form_page/components/input_decoration.dart';

class SignInPasswordFormField extends HookWidget {
  const SignInPasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final obscured = useState(true);
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize),
      child: TextFormField(
          onChanged: (value) => context.read<SignInFormBloc>().add(
                SignInFormEvent.passwordChanged(value),
              ),
          validator: (value) =>
              validatePassword(value!).fold(() => null, (a) => a.message),
          obscureText: obscured.value,
          decoration: getTextInputDecoration(
            iconData: Icons.vpn_key,
            labelText: 'Password',
            suffixIcon: IconButton(
              onPressed: () => obscured.value = !obscured.value,
              color: Colors.black.withOpacity(0.5),
              icon: Icon(
                obscured.value
                    ? Icons.remove_red_eye
                    : Icons.remove_red_eye_outlined,
              ),
            ),
          )),
    );
  }
}
