import 'package:flutter/material.dart';

import '../../components/order_info_field.dart';
import '../../components/sender_receiver_section.dart';
import '../../dao/order.dart';
import '../../utils/size_config.dart';

class NotEditableOrderInfo extends StatelessWidget {
  final Order order;

  const NotEditableOrderInfo({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderInfoField(
          title: 'Order ID',
          content: order.orderId ?? 'Not Found',
        ),
        SizedBox(height: SizeConfig.defaultSize * 3),
        SenderReceiverSection(order: order),
        SizedBox(height: SizeConfig.defaultSize * 3),
        OrderInfoField(
          title: 'Package',
          content: order.packageName ?? 'Not found',
        ),
        SizedBox(height: SizeConfig.defaultSize * 2),
        _buildAdditionalInfo(context),
        SizedBox(height: SizeConfig.defaultSize * 3),
      ],
    );
  }

  Widget _buildAdditionalInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderInfoField(title: 'Category', content: 'Electronics'),
        OrderInfoField(title: 'Weight', content: '<1 kg'),
        OrderInfoField(title: 'Vehicle', content: 'Motorcycle')
      ],
    );
  }
}
