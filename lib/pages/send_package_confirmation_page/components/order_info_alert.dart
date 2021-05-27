import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../utils/size_config.dart';

class OrderInfoAlert {
  final VoidCallback onGeneratePdf;
  final VoidCallback onClose;
  final BuildContext context;
  final bool success;

  OrderInfoAlert({
    required this.onGeneratePdf,
    required this.onClose,
    required this.context,
    this.success = true,
  });

  void show() {
    final svgFileName = success ? 'on_the_way' : 'faq';
    final title = success ? 'Success!' : 'Fail!';
    final description =
        success ? 'Your order has been received' : 'Something went wrong!';
    final buttonColor =
        success ? Theme.of(context).colorScheme.secondary : Colors.red;

    final alert = Alert(
      closeIcon: Container(),
      // closeFunction: () => print('hehehehe'),
      context: context,
      title: title,
      content: _buildContents(svgFileName, description),
      buttons: [
        if (success) _buildGetPdfButton(context),
        _buildCloseButton(context, buttonColor),
      ],
    );

    alert.show();
  }

  Column _buildContents(String svgFileName, String description) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(
          'assets/svgs/$svgFileName.svg',
          height: SizeConfig.defaultSize * 17,
        ),
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.defaultSize * 3),
          child: Text(description),
        ),
      ],
    );
  }

  DialogButton _buildGetPdfButton(BuildContext context) {
    return DialogButton(
      onPressed: /*() => generateAndShowPdf(context)*/ onGeneratePdf,
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        'Get Receipt',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  DialogButton _buildCloseButton(BuildContext context, Color buttonColor) {
    return DialogButton(
      onPressed:
          // () {
          //   var count = 0;
          //   Navigator.popUntil(context, (route) {
          //     return count++ == 3;
          //   });
          //   context.read<OrderFormData>().clearOrder();
          // },
          onClose,
      color: buttonColor,
      child: Text(
        'Close',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}
