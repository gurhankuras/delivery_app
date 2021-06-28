import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants.dart';
import '../../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'input_decoration.dart';

class PersonNameFormField<T> extends StatelessWidget {
  const PersonNameFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('PERSON_NAME_FORM_FIELD');
    return Padding(
      padding: EdgeInsets.only(top: defaultPadding),
      child: TextFormField(
        initialValue: context.read<OrderFormPersonBloc<T>>().state.person.name,
        onChanged: (value) {
          context
              .read<OrderFormPersonBloc<T>>()
              .add(OrderFormPersonEvent.nameChanged(value));
        },
        validator: (_) {
          return context
              .read<OrderFormPersonBloc<T>>()
              .state
              .nameFailure
              .fold(() => null, (a) => a.message);
        },
        textInputAction: TextInputAction.next,
        textCapitalization: TextCapitalization.words,
        keyboardType: TextInputType.name,
        decoration:
            getTextInputDecoration(iconData: Icons.person, labelText: 'Name'),
      ),
    );
  }
}
