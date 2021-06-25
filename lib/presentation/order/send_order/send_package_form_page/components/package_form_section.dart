import 'package:delivery_app/application/core/constants.dart';
import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_form_page/components/app_select.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_form_page/components/input_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart';

class PackageFormSection extends StatelessWidget {
  PackageFormSection({Key? key}) : super(key: key);

  final categories = [
    'Electronics',
    'Food',
    'Cosmetics',
  ];

  final types = [
    'Document',
    'Bundle',
    'Package',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Package Info', style: sectionTextStyle(context)),
        const Divider(thickness: 2),
        buildPackageNameField(context),
        Padding(
          padding: EdgeInsets.only(bottom: SizeConfig.defaultSize),
          child: AppSelect(
            title: 'Package Category',
            selectNames: categories,
            onSelectedItemChanged: (currentIndex, selectedName) => context
                .read<OrderFormPackageBloc>()
                .add(OrderFormPackageEvent.categoryChanged(selectedName)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: SizeConfig.defaultSize),
          child: AppSelect(
            title: 'Package Type',
            selectNames: types,
            onSelectedItemChanged: (currentIndex, selectedName) => context
                .read<OrderFormPackageBloc>()
                .add(OrderFormPackageEvent.typeChanged(selectedName)),
          ),
        ),
      ],
    );
  }
}

Widget buildPackageNameField(BuildContext context) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize),
    child: TextFormField(
      onChanged: (value) => context
          .read<OrderFormPackageBloc>()
          .add(OrderFormPackageEvent.packageNameChanged(value)),
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: getTextInputDecoration(
        iconData: FontAwesomeIcons.box,
        isFontAwesome: true,
        labelText: 'Package Name',
      ),
    ),
  );
}
