import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../dao/order.dart';
import '../../utils/size_config.dart';
import 'components/sender_receiver_section.dart';

class OrderDetailsPageBody extends StatelessWidget {
  const OrderDetailsPageBody({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Order ID",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(height: SizeConfig.defaultSize * 0.5),
        Text(
          order.orderId,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(height: SizeConfig.defaultSize * 3),
        SenderReceiverSection(order: order),
        SizedBox(height: SizeConfig.defaultSize * 3),
        Text(
          "Package",
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(height: SizeConfig.defaultSize * 0.5),
        Text(
          order.packageName,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(height: SizeConfig.defaultSize * 2),
        buildAdditionalInfo(context),
        SizedBox(height: SizeConfig.defaultSize * 3),
        Text(
          "Order Status",
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        ),
        Column(
          children: order.orderStates
              .map(
                (state) => ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(state.event),
                  subtitle: Text(
                      '${DateFormat.yMMMMd().format(state.timeStamp)} - ${DateFormat.jm().format(state.timeStamp)}'),
                ),
              )
              .toList(),
        )
      ],
    );
  }

  Widget buildAdditionalInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildAdditionalInfoSubsection(
          title: 'Category',
          content: "Electronics",
          context: context,
        ),
        buildAdditionalInfoSubsection(
          title: 'Weight',
          content: "<1 kg",
          context: context,
        ),
        buildAdditionalInfoSubsection(
          title: 'Vehicle',
          content: "Motorcycle",
          context: context,
        ),
      ],
    );
  }

  Column buildAdditionalInfoSubsection(
      {required String title,
      required String content,
      required BuildContext context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(
          height: SizeConfig.defaultSize * 0.5,
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        )
      ],
    );
  }
}
