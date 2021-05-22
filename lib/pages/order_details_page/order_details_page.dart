import 'package:flutter/material.dart';

import '../../dao/order.dart';
import '../../utils/size_config.dart';
import 'order_details_page_body.dart';

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
        child: SingleChildScrollView(child: OrderDetailsPageBody(order: order)),
      ),
    );
  }
}
