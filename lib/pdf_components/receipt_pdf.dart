import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class ReceiptPdf {
  PdfColor mainColor = PdfColor(239 / 255, 84 / 255, 72 / 255);

  Future<Page> getPage() async {
    final logoSvg =
        await rootBundle.loadString('assets/svgs/fast-delivery.svg');
    return Page(
      build: (context) => Container(
        child: Column(
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              _buildLogo(logoSvg),
              Spacer(),
              _buildInfo(),
            ]),
            Header(
              child: Center(child: Text('INVOICE DETAILS')),
            ),
            _buildSenderReceiverHeader(),
            Divider(),
            Container(height: 10),
            _buildFieldRow(
              context: context,
              fieldName: 'Address',
              senderValue: 'HAHAH sokak ali caddesi no 4/4 Pendik',
              receiverValue:
                  'HAHAH sokak ali caddesi no 4/4 Pendik Istanbul HAHAH sokak ali caddesi no 4/4 Pendik Istanbul HAHAH sokak ali caddesi no 4/4 Pendik Istanbul',
            ),
            Container(height: 20),
            _buildFieldRow(
              context: context,
              fieldName: 'Name',
              senderValue: 'Gurhan',
              receiverValue: 'Eric Cartman',
            ),
            Container(height: 20),
            _buildFieldRow(
              context: context,
              fieldName: 'Address',
              senderValue: 'HAHAH sokak ali caddesi no 4/4 Pendik',
              receiverValue:
                  'HAHAH sokak ali caddesi no 4/4 Pendik Istanbul HAHAH sokak ali caddesi no 4/4 Pendik Istanbul HAHAH sokak ali caddesi no 4/4 Pendik Istanbul',
            ),
          ],
        ),
      ),
    );
  }

  Row _buildLogo(String logoSvg) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgImage(
          svg: logoSvg,
          height: 40,
          colorFilter: mainColor,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          'Deliver',
        ),
        Text(
          'it',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: mainColor,
          ),
        ),
      ],
    );
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
              Text(
                'Track Id:',
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Date:',
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('2223 4222 453GD'),
            Text('11.01.2021'),
          ])
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
