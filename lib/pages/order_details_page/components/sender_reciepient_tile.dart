import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../dao/order.dart';
import '../../../utils/size_config.dart';

class SenderRecipientTile extends StatelessWidget {
  final Order order;
  const SenderRecipientTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Sender',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(height: SizeConfig.defaultSize * 0.5),
        Text.rich(
          TextSpan(
            text: order.senderName,
            children: [
              TextSpan(
                  text: '  (${order.senderPhoneNumber})',
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
        Text(order.senderAddress),
      ],
    );
  }
}
