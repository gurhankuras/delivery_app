import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/app_button.dart';
import '../../components/sender_receiver_section.dart';
import '../../dao/order.dart';
import '../../utils/size_config.dart';

class SendPackageConfirmationPage extends StatelessWidget {
  final Map<String, dynamic> formData;
  const SendPackageConfirmationPage({
    Key? key,
    required this.formData,
  }) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(),
            Text('Delivery Details', style: headerStyle),
            SizedBox(height: SizeConfig.defaultSize * 2),
            Builder(builder: (context) {
              return SenderReceiverSection(
                order: mockOrder,
                editing: true,
                onEdit: () {
                  // showMyDialog(context);
                },
              );
            }),
            SizedBox(height: SizeConfig.defaultSize * 3.5),
            Spacer(),
            Text('Package Details', style: headerStyle),
            SizedBox(height: SizeConfig.defaultSize * 1.5),
            buildPackageDetails(context),
            Spacer(),
            AppButton(
              text: 'Deliver it!',
              click: () {},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  /*

SizedBox.expand(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Dismiss',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),

  */

  Row buildPackageDetails(BuildContext context) {
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
                  text: mockOrder.packageName,
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
              Text(mockOrder.packageCategory!),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.mode_edit_outline),
          onPressed: () {},
        )
      ],
    );
  }
}
