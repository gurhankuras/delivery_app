import '../../../../langs/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'input_decoration.dart';

class PersonTCFormField<T> extends StatelessWidget {
  const PersonTCFormField({
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
              .add(OrderFormPersonEvent.tcChanged(value));
        },
        validator: (_) {
          return context
              .read<OrderFormPersonBloc<T>>()
              .state
              .tcFailure
              .fold(() => null, (a) => a.message);
        },
        inputFormatters: [
          MaskTextInputFormatter(
              mask: '###########', filter: {'#': RegExp(r'[0-9]')})
        ],
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.number,
        decoration: getTextInputDecoration(
          iconData: FontAwesomeIcons.idCard,
          labelText: LocaleKeys.tr_id.tr(),
          isFontAwesome: true,
        ),
      ),
    );
  }
}
