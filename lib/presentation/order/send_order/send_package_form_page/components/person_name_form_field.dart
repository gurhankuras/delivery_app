import 'package:delivery_app/application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_form_page/components/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PersonNameFormField extends HookWidget {
  const PersonNameFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController();
    return TextFormField(
      controller: textEditingController,
      onChanged: (value) {
        context
            .read<OrderFormPersonBloc>()
            .add(OrderFormPersonEvent.nameChanged(value));
      },
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration:
          getTextInputDecoration(iconData: Icons.person, labelText: 'Name'),
    );
  }
}

// class PersonFormField extends HookWidget {
//   const PersonNameFormField({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final textEditingController = useTextEditingController();
//     return TextFormField(
//       controller: textEditingController,
//       onChanged: (value) {
//         context
//             .read<OrderFormPersonBloc>()
//             .add(OrderFormPersonEvent.nameChanged(value));
//       },
//       textInputAction: TextInputAction.next,
//       textCapitalization: TextCapitalization.words,
//       keyboardType: TextInputType.name,
//       decoration:
//           getTextInputDecoration(iconData: Icons.person, labelText: 'Name'),
//     );
//   }
// }

