import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart';
import '../../../application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart';
import '../../../application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart';
import '../../../injection.dart';
import '../../core/size_config.dart';
import '../../order/send_order/send_package_form_page/send_package_form_page.dart';
import '../../order/update_order/edit_order_status_page/edit_order_status_page.dart';

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
            BlocProvider(create: (context) => OrderFormSenderBloc()),
            BlocProvider(
              lazy: false,
              create: (context) => OrderFormPersonBloc<Sender>(
                  context.read<OrderFormSenderBloc>()),
            ),
            BlocProvider(
              lazy: false,
              create: (context) => OrderFormPersonBloc<Receiver>(
                  context.read<OrderFormSenderBloc>()),
            ),
            BlocProvider(
              // lazy: false,
              create: (context) => getIt<OrderFormPackageBloc>(),
            ),
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

class ButtonCard extends StatelessWidget {
  final Color? color;
  final String title;
  final IconData iconData;
  final double? iconSize;
  final VoidCallback press;
  const ButtonCard({
    Key? key,
    this.color,
    required this.title,
    required this.iconData,
    this.iconSize,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          color ?? Theme.of(context).colorScheme.secondary,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * 2.5,
            ),
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.defaultSize),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 2.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              iconData,
              size: iconSize ?? SizeConfig.defaultSize * 9,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
