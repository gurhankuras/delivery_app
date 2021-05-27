import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../components/app_button.dart';
import '../../components/sender_receiver_section.dart';
import '../../dao/order.dart';
import '../../extensions/navigator_extension.dart';
import '../../pdf_components/receipt_pdf.dart';
import '../../providers/order_form_data.dart';
import '../../services/order_service.dart';
import '../../services/pdf_service.dart';
import '../../utils/size_config.dart';
import 'components/order_info_alert.dart';

class SendPackageConfirmationPage extends StatelessWidget {
  const SendPackageConfirmationPage({
    Key? key,
  }) : super(key: key);

  Future<void> confirm(BuildContext context) async {
    final id = await sendOrder(context);
    final success = id != null;
    if (success) context.read<OrderFormData>().order!.orderId = id;
    OrderInfoAlert(
      success: success,
      onClose: () {
        Navigator.of(context).popNTimes(3);
        context.read<OrderFormData>().clearOrder();
      },
      onGeneratePdf: () => generateAndShowPdf(context),
      context: context,
    ).show();
  }

  Future<String?> sendOrder(BuildContext context) async {
    final order = context.read<OrderFormData>().order;
    return context.read<OrderService>().submitOrder(order!);
  }

  Future<void> generateAndShowPdf(BuildContext context) async {
    final pdfService = context.read<PdfService>();
    final order = context.read<OrderFormData>().order;
    final pdfFile = await pdfService.generate(ReceiptPdfManager(order!));
    await pdfService.openFile(pdfFile);
  }

  @override
  Widget build(BuildContext context) {
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
              SenderReceiverSection(
                  order: context.read<OrderFormData>().order!),
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
      ],
    );
  }
}
