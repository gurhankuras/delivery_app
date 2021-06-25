import '../../../../core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'input_decoration.dart';

class PersonPhoneNumberFormField<T> extends StatelessWidget {
  const PersonPhoneNumberFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: defaultPadding),
      child: TextFormField(
        onChanged: (value) {
          context
              .read<OrderFormPersonBloc<T>>()
              .add(OrderFormPersonEvent.phoneNumberChanged(value));
        },
        validator: (_) {
          return context
              .read<OrderFormPersonBloc<T>>()
              .state
              .phoneNumberFailure
              .fold(() => null, (a) => a.message);
        },
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.phone,
        inputFormatters: [
          MaskTextInputFormatter(
              mask: '+90 (###) ### ## ##', filter: {'#': RegExp(r'[0-9]')})
        ],
        decoration: getTextInputDecoration(
          labelText: 'Phone number',
          iconData: Icons.phone,
        ),
      ),
    );
  }
}
