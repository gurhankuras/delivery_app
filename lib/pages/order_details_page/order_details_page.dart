import 'package:delivery_app/pages/order_details_page/sender_reciepient_tile.dart';
import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:delivery_app/dao/order.dart';

class OrderDetailPage extends StatelessWidget {
  final Order order;

  const OrderDetailPage({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Order Details', style: Theme.of(context).textTheme.headline6),
      ),
      body: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order ID",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Colors.black.withOpacity(0.6)),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 0.5,
            ),
            Text(
              order.orderId,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontSize: 18,
                  ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize * 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SenderRecipientTile(order: order),
                      Padding(
                        padding:
                            EdgeInsets.only(right: SizeConfig.defaultSize * 3),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      SenderRecipientTile(order: order),
                    ],
                  ),
                ),
                Text('1.1 Km'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
