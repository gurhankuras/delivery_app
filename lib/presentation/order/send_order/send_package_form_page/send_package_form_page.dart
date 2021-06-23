import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../../application/order/order_form/bloc/order_form_sender_bloc.dart';
import '../../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import '../../../core/logger.dart';
import '../../../core/size_config.dart';
import '../send_package_confirmation_page/send_package_confirmation_page.dart';
import 'components/app_select.dart';
import 'components/input_decoration.dart';
import 'components/person_address_form_field.dart';
import 'components/person_name_form_field.dart';
import 'components/person_phone_number_form_field.dart';
import 'components/person_tc_form_field.dart';

class SendPackageFormPage extends StatelessWidget {
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
    log.d('SEND_PACKAGE_FORM_PAGE');
    return Scaffold(
      appBar: buildAppbar(context),
      body: BlocBuilder<OrderFormSenderBloc, OrderFormSenderState>(
        builder: (context, state) {
          log.d('SEND_PACKAGE_FORM_PAGE - FORM BUILDER');
          return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: SingleChildScrollView(
                child: buildBody(context),
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        'Send Package',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        PersonFormSection<Sender>(title: 'Sender Info'),
        PersonFormSection<Receiver>(title: 'Receiver Info'),
        SizedBox(height: SizeConfig.defaultSize),
        SizedBox(height: SizeConfig.defaultSize * 3),
        const OrderFormSectionTitle(title: 'Package Info'),
        const Divider(thickness: 2),
        SizedBox(height: SizeConfig.defaultSize),
        buildPackageNameField(),
        SizedBox(height: SizeConfig.defaultSize),
        AppSelect(title: 'Package Category', selectNames: categories),
        SizedBox(height: SizeConfig.defaultSize),
        AppSelect(title: 'Package Type', selectNames: types),
        SizedBox(height: SizeConfig.defaultSize),
        buildButton(context),
        SizedBox(height: SizeConfig.defaultSize),
      ],
    );
  }

  TextFormField buildPackageNameField() {
    return TextFormField(
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.name,
      decoration: getTextInputDecoration(
        iconData: FontAwesomeIcons.box,
        isFontAwesome: true,
        labelText: 'Package Name',
      ),
    );
  }

  SizedBox buildButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            context
                .read<OrderFormSenderBloc>()
                .add(OrderFormSenderEvent.saved());
            context
                .read<OrderFormPersonBloc<Sender>>()
                .state
                .overallFailure
                .fold(
                  () => context
                      .read<OrderFormPersonBloc<Receiver>>()
                      .state
                      .overallFailure
                      .fold(
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SendPackageConfirmationPage(),
                          ),
                        ),
                        (a) => null,
                      ),
                  (a) => null,
                );
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize),
            child: Text(
              'Continue',
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          )),
    );
  }
}

class OrderFormSectionTitle extends StatelessWidget {
  final String title;
  const OrderFormSectionTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(fontWeight: FontWeight.w600),
    );
  }
}

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
          OrderFormSectionTitle(title: title),
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
