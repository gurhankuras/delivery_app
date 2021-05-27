import 'package:delivery_app/components/app_button.dart';
import 'package:delivery_app/components/disabled_widget.dart';
import 'package:delivery_app/components/sender_receiver_section.dart';
import 'package:delivery_app/dao/order.dart';
import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class EditOrderStatusPage extends StatefulWidget {
  @override
  _EditOrderStatusPageState createState() => _EditOrderStatusPageState();
}

// TODO REFACTOR

class _EditOrderStatusPageState extends State<EditOrderStatusPage> {
  final DeliveryStatus _currentDeliveryState = DeliveryStatus.ordered;
  DeliveryStatus _updatedDeliveryState = DeliveryStatus.ordered;

  @override
  Widget build(BuildContext context) {
    print(_updatedDeliveryState);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.08),
          child: buildContent(context, mockOrder),
        ),
      ),
    );
  }

  final orderStatus = [
    'Ordered',
    'On the way',
    'Dispatching',
    'Delivered',
    'Completed'
  ];

  Column buildContent(BuildContext context, Order order) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order ID',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(height: SizeConfig.defaultSize * 0.5),
        Text(
          order.orderId ?? 'Not Found',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(height: SizeConfig.defaultSize * 3),
        SenderReceiverSection(order: order),
        SizedBox(height: SizeConfig.defaultSize * 3),
        Text(
          'Package',
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.black.withOpacity(0.6)),
        ),
        SizedBox(height: SizeConfig.defaultSize * 0.5),
        Text(
          order.packageName ?? 'Not Found',
          style: Theme.of(context).textTheme.headline6?.copyWith(
                fontSize: 18,
              ),
        ),
        SizedBox(height: SizeConfig.defaultSize * 2),
        buildAdditionalInfo(context),
        SizedBox(height: SizeConfig.defaultSize * 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildAdditionalInfoSubsection(
              title: 'Delivery Status',
              content: orderStatus[_currentDeliveryState.index],
              context: context,
              alignment: CrossAxisAlignment.center,
            ),
            Icon(
              Icons.arrow_right_alt_outlined,
              size: SizeConfig.defaultSize * 3,
            ),
            buildAdditionalInfoSubsection(
              title: 'Updated Delivery Status',
              content: orderStatus[_updatedDeliveryState.index],
              context: context,
              alignment: CrossAxisAlignment.center,
            ),
          ],
        ),
        SizedBox(height: SizeConfig.defaultSize * 3),
        ...List.generate(DeliveryStatus.values.length, (index) {
          final radioTile = RadioListTile<DeliveryStatus>(
            activeColor: Theme.of(context).colorScheme.primary,
            secondary: index <= _updatedDeliveryState.index
                ? FaIcon(
                    FontAwesomeIcons.check,
                    color: index == _updatedDeliveryState.index
                        ? Colors.lightGreen
                        : Theme.of(context).iconTheme.color,
                  )
                : null,
            title: Text(DeliveryStatus.values[index].str()),
            value: DeliveryStatus.values[index],
            groupValue: _updatedDeliveryState,
            onChanged: (DeliveryStatus? value) {
              setState(() {
                _updatedDeliveryState = value!;
              });
            },
          );
          if (index < _currentDeliveryState.index) {
            return DisabledWidget(
              opacity: 0.1,
              child: radioTile,
            );
          }
          return radioTile;
        }),
        AppButton(
            text: 'Update',
            click: () {
              Navigator.of(context).pop();
            })
      ],
    );
  }

  Widget buildAdditionalInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildAdditionalInfoSubsection(
          title: 'Category',
          content: 'Electronics',
          context: context,
        ),
        buildAdditionalInfoSubsection(
          title: 'Weight',
          content: '<1 kg',
          context: context,
        ),
        buildAdditionalInfoSubsection(
          title: 'Vehicle',
          content: 'Motorcycle',
          context: context,
        ),
      ],
    );
  }

  Column buildAdditionalInfoSubsection(
      {required String title,
      required String content,
      required BuildContext context,
      CrossAxisAlignment alignment = CrossAxisAlignment.start}) {
    return Column(
      crossAxisAlignment: alignment,
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

enum DeliveryStatus { ordered, on_the_way, dispatching, delivered, completed }

extension DeliveryStatusExtension on DeliveryStatus {
  String str() {
    switch (this) {
      case DeliveryStatus.ordered:
        return 'Ordered';
      case DeliveryStatus.on_the_way:
        return 'On the Way';
      case DeliveryStatus.dispatching:
        return 'Dispatching';
      case DeliveryStatus.delivered:
        return 'Delivered';
      case DeliveryStatus.completed:
        return 'Completed';
    }
  }
}
