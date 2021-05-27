import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

import '../dao/order.dart';
import 'pdf_page_manager.dart';

class ReceiptPdfManager implements PdfPageManager {
  PdfColor mainColor = PdfColor.fromHex('ef5448');
  TextStyle get textStyle =>
      TextStyle(fontWeight: FontWeight.bold, color: mainColor);
  final Order order;

  ReceiptPdfManager(this.order);

  @override
  Future<Page> getPage() async {
    final logoSvg =
        await rootBundle.loadString('assets/svgs/fast-delivery.svg');
    return Page(
      build: (context) => Container(
        child: Column(
          children: [
            Spacer(),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildLogo(logoSvg),
              Spacer(),
              _buildInfo(),
            ]),
            Spacer(flex: 1),
            Header(
              child: Center(child: Text('INVOICE DETAILS')),
            ),
            _buildSenderReceiverHeader(),
            Divider(),
            Container(height: 10),
            _buildFieldRow(
              context: context,
              fieldName: 'Address',
              senderValue: order.sender!.address,
              receiverValue: order.receiver!.address,
            ),
            Container(height: 20),
            _buildFieldRow(
              context: context,
              fieldName: 'Name',
              senderValue: order.sender!.name,
              receiverValue: order.receiver!.name,
            ),
            Container(height: 20),
            _buildFieldRow(
              context: context,
              fieldName: 'Phone Number',
              senderValue: order.sender!.phoneNumber,
              receiverValue: order.receiver!.phoneNumber,
            ),
            Container(height: 20),
            _buildFieldRow(
              context: context,
              fieldName: 'TR Id',
              senderValue: order.sender!.trId,
              receiverValue: order.receiver!.trId,
            ),
            Spacer(flex: 9),
            Lorem(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo(String logoSvg) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgImage(
            svg: logoSvg,
            height: 40,
            colorFilter: mainColor,
          ),
          SizedBox(width: 6),
          Text('Deliver'),
          Text('it', style: textStyle),
        ],
      ),
      Text(
        'Package Info',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 10),
      Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name:', style: textStyle),
            Text('Category:', style: textStyle),
            Text('Type:', style: textStyle),
          ],
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order.packageName!),
            Text(order.packageCategory!),
            Text(order.packageType!),
          ],
        )
      ]),
    ]);
  }

  Widget _buildInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BarcodeWidget(
          width: 70,
          height: 70,
          data: '905456877747',
          barcode: Barcode.qrCode(),
        ),
        SizedBox(height: 10),
        Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Track Id:', style: textStyle),
              Text('Date:', style: textStyle),
            ],
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(order.orderId!),
              Text(DateFormat.yMd().format(DateTime.now())),
            ],
          )
        ]),
      ],
    );
  }

  Row _buildSenderReceiverHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        Text('SENDER'),
        Spacer(),
        Text('RECEIVER'),
        Spacer(),
      ],
    );
  }

  Row _buildFieldRow({
    required Context context,
    required String fieldName,
    required String senderValue,
    required String receiverValue,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: Text('$fieldName:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
        Expanded(
          flex: 10,
          child: Text(senderValue),
        ),
        Spacer(),
        Expanded(
          flex: 10,
          child: Text('$fieldName:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
        ),
        Expanded(
          flex: 10,
          child: Text(receiverValue),
        ),
      ],
    );
  }
}
