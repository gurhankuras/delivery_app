import '../../../../langs/locale_keys.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../../core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'input_decoration.dart';

class PersonAddressFormField<T> extends StatelessWidget {
  const PersonAddressFormField({
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
              .add(OrderFormPersonEvent.addressChanged(value));
        },
        validator: (_) {
          return context
              .read<OrderFormPersonBloc<T>>()
              .state
              .addressFailure
              .fold(() => null, (a) => a.message);
        },
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.streetAddress,
        decoration: getTextInputDecoration(
          labelText: LocaleKeys.address.tr(),
          iconData: Icons.location_on,
        ),
      ),
    );
  }
}
