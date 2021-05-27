import 'package:delivery_app/components/app_button.dart';
import 'package:delivery_app/pages/edit_order_status_page/edit_order_status_page.dart';
import 'package:delivery_app/pages/send_package_form_page/send_package_form_page.dart';
import 'package:flutter/material.dart';

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
        builder: (context) => SendPackageFormPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          text: 'Edit Order Status',
          click: () => _navigateToEditOrderPage(context),
        ),
        AppButton(
          text: 'Send Package',
          click: () => _navigateToSendPackagePage(context),
        )
      ],
    );
  }
}
