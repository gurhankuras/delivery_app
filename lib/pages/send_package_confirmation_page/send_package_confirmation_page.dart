import 'package:delivery_app/pdf_components/receipt_pdf.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../components/app_button.dart';
import '../../components/sender_receiver_section.dart';
import '../../dao/order.dart';
import '../../providers/order_form_data.dart';
import '../../services/order_service.dart';
import '../../services/pdf_service.dart';
import '../../utils/size_config.dart';

class SendPackageConfirmationPage extends StatelessWidget {
  const SendPackageConfirmationPage({
    Key? key,
  }) : super(key: key);

  Future<void> confirm(BuildContext context) async {
    final id = await sendOrder(context);
    final success = id != null;
    if (success) context.read<OrderFormData>().order!.orderId = id;
    _showPopUp(success, context);
  }

  Future<String?> sendOrder(BuildContext context) async {
    final order = context.read<OrderFormData>().order;
    return context.read<OrderService>().submitOrder(order!);
  }

  void _showPopUp(bool success, BuildContext context) {
    final svgFileName = success ? 'on_the_way' : 'faq';
    final title = success ? 'Success!' : 'Something went wrong!';
    final buttonColor =
        success ? Theme.of(context).colorScheme.secondary : Colors.red;
    Alert(
        context: context,
        title: title,
        content: Column(
          children: <Widget>[
            SvgPicture.asset(
              'assets/svgs/$svgFileName.svg',
              height: SizeConfig.defaultSize * 17,
              // height: 100,
            ),
            Text('Your order has been received'),
          ],
        ),
        buttons: [
          if (success) _buildGetPdfButton(context),
          _buildCloseButton(context, buttonColor)
        ]).show();
  }

  DialogButton _buildGetPdfButton(BuildContext context) {
    return DialogButton(
      onPressed: () => generateAndShowPdf(context),
      color: Theme.of(context).colorScheme.primary,
      child: Text(
        'Get Receipt',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

// TODO Move Popup and related functions to a new widget
  Future<void> generateAndShowPdf(BuildContext context) async {
    final pdfService = context.read<PdfService>();
    final order = context.read<OrderFormData>().order;
    final pdfFile = await pdfService.generate(ReceiptPdfManager(order!));
    await pdfService.openFile(pdfFile);
  }

  DialogButton _buildCloseButton(BuildContext context, Color buttonColor) {
    return DialogButton(
      onPressed: () {
        var count = 0;
        Navigator.popUntil(context, (route) {
          return count++ == 3;
        });
        context.read<OrderFormData>().clearOrder();
      },
      color: buttonColor,
      child: Text(
        'Close',
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final order = Provider.of<OrderFormData>(context).order;
    final headerStyle = Theme.of(context)
        .textTheme
        .headline6
        ?.copyWith(fontWeight: FontWeight.bold, color: Color(0xFF3D4B61));

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirmation',
          style: headerStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: SizeConfig.defaultSize * 3.5),
              Text('Delivery Details', style: headerStyle),
              SizedBox(height: SizeConfig.defaultSize * 3),
              Builder(builder: (context) {
                return SenderReceiverSection(
                  order: context.read<OrderFormData>().order!,
                );
              }),
              SizedBox(height: SizeConfig.defaultSize * 3.5),
              Text('Package Details', style: headerStyle),
              SizedBox(height: SizeConfig.defaultSize * 2),
              buildPackageDetails(context),
              SizedBox(height: SizeConfig.defaultSize * 3.5),
              AppButton(text: 'Deliver it!', click: () => confirm(context)),
            ],
          ),
        ),
      ),
    );
  }

  Row buildPackageDetails(BuildContext context) {
    final order = context.read<OrderFormData>().order;
    return Row(
      children: [
        SvgPicture.asset(
          'assets/svgs/package.svg',
          color: Theme.of(context).colorScheme.primary,
          height: SizeConfig.defaultSize * 2.5,
        ),
        Spacer(),
        Expanded(
          flex: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Item Details',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(color: Colors.black.withOpacity(0.6)),
              ),
              SizedBox(height: SizeConfig.defaultSize * 0.5),
              Text.rich(
                TextSpan(
                  text: order!.packageName,
                  children: [
                    TextSpan(
                        text: '  (<${mockOrder.weight} kg)',
                        style: Theme.of(context).textTheme.subtitle2?.copyWith(
                              fontWeight: FontWeight.normal,
                            )),
                  ],
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              SizedBox(height: SizeConfig.defaultSize * 0.5),
              Text(order.packageCategory ?? ' - '),
            ],
          ),
        ),
        // IconButton(
        //   icon: Icon(Icons.mode_edit_outline),
        //   onPressed: () {},
        // )
      ],
    );
  }
}
