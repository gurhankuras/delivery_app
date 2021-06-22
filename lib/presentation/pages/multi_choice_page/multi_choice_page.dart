import 'package:delivery_app/application/order/order_form/bloc/order_form_sender_bloc.dart';
import 'package:delivery_app/application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_form_page/send_package_form_page.dart';
import 'package:delivery_app/presentation/order/update_order/edit_order_status_page/edit_order_status_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../user_selection_page/user_selection_page.dart';

class MultiChoicePage extends StatelessWidget {
  void _navigateToEditOrderPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => EditOrderStatusPage(),
      ),
    );
  }

  void _navigateToSendPackagePage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => OrderFormSenderBloc(),
            )
          ],
          child: SendPackageFormPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.screenWidth * 0.05,
        vertical: SizeConfig.screenHeight * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 45,
            child: ButtonCard(
              title: 'Edit Order Status',
              iconSize: SizeConfig.defaultSize * 5,
              // color: Theme.of(context).colorScheme.primaryVariant,
              iconData: Icons.edit,
              press: () => _navigateToEditOrderPage(context),
            ),
          ),
          Spacer(
            flex: 5,
          ),
          Spacer(
            flex: 5,
          ),
          Expanded(
            flex: 45,
            child: ButtonCard(
              title: 'Send Package',
              iconSize: SizeConfig.defaultSize * 5,
              color: Theme.of(context).colorScheme.primary,
              iconData: FontAwesomeIcons.box,
              press: () => _navigateToSendPackagePage(context),
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
