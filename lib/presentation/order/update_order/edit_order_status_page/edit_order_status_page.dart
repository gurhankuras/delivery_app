import 'package:delivery_app/domain/order/order.dart';
import 'package:delivery_app/infastructure/services/order_service.dart';
import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:delivery_app/presentation/core/widgets/app_button.dart';
import 'package:delivery_app/presentation/core/widgets/disabled_widget.dart';
import 'package:delivery_app/presentation/core/widgets/order_info_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import 'delivery_status.dart';
import 'editing_dialog.dart';
import 'not_editable_order_info.dart';

class EditOrderStatusPage extends StatefulWidget {
  @override
  _EditOrderStatusPageState createState() => _EditOrderStatusPageState();
}

// TODO REFACTOr

class _EditOrderStatusPageState extends State<EditOrderStatusPage> {
  Order? order;
  bool isLoading = true;
  final DeliveryStatus _currentDeliveryState = DeliveryStatus.ordered;
  DeliveryStatus _updatedDeliveryState = DeliveryStatus.ordered;

  bool couldntDelivered = false;

  @override
  void initState() {
    super.initState();
    context.read<OrderService>().read('123456').then((value) {
      setState(() {
        isLoading = false;
        order = value;
      });
    }).catchError((_) {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _currentDeliveryState == _updatedDeliveryState
          ? () async => true
          : _onWilPopScopeEditedHandler,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.08),
            child: !isLoading
                ? buildContent(context, order!)
                : Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ),
      ),
    );
  }

  Future<bool> _onWilPopScopeEditedHandler() async {
    final exit = await showDialog(
      context: context,
      builder: (context) => EditingDialog(),
    );
    return exit ? true : false;
  }

  Column buildContent(BuildContext context, Order order) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NotEditableOrderInfo(order: order),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            OrderInfoField(
              title: 'Delivery Status',
              content: _currentDeliveryState.str(),
              alignment: CrossAxisAlignment.center,
            ),
            Icon(
              Icons.arrow_right_alt_outlined,
              size: SizeConfig.defaultSize * 3,
            ),
            OrderInfoField(
              title: 'Updated Delivery Status',
              content: _updatedDeliveryState.str(),
              alignment: CrossAxisAlignment.center,
            )
          ],
        ),
        SizedBox(height: SizeConfig.defaultSize * 3),
        ..._buildDeliveryStatusButtons(),
        AppButton(
          text: 'Update',
          click: () async {
            final success = await context
                .read<OrderService>()
                .updateDeliveryStatus({'orderId': 123456, 'state': 2});
            print(success);
            Navigator.of(context).pop();
          },
        ),
        SizedBox(height: SizeConfig.defaultSize * 2),
      ],
    );
  }

  List<Widget> _buildDeliveryStatusButtons() {
    return List.generate(
      DeliveryStatus.values.length,
      (index) {
        final radioTile = RadioListTile<DeliveryStatus>(
          activeColor: Theme.of(context).colorScheme.primary,
          secondary: getCorrectIconAndColor(index),
          title: Text(DeliveryStatus.values[index].str()),
          value: DeliveryStatus.values[index],
          groupValue: _updatedDeliveryState,
          onChanged: (DeliveryStatus? value) {
            if (value == DeliveryStatus.not_home) {
              couldntDelivered = true;
            } else {
              couldntDelivered = false;
            }
            setState(() {
              _updatedDeliveryState = value!;
            });
          },
        );
        if (index < _currentDeliveryState.index) {
          return Theme(
            data: ThemeData(unselectedWidgetColor: Colors.grey),
            child: DisabledWidget(
              opacity: 0.1,
              child: radioTile,
            ),
          );
        }
        return radioTile;
      },
    );
  }

  FaIcon? getCorrectIconAndColor(int index) {
    if (couldntDelivered && index == _updatedDeliveryState.index) {
      return FaIcon(FontAwesomeIcons.times,
          color: Theme.of(context).errorColor);
    }
    if (index < _currentDeliveryState.index) {
      return FaIcon(FontAwesomeIcons.check,
          color: Theme.of(context).iconTheme.color);
    }
    if (couldntDelivered) {
      return null;
    }
    if (index < _updatedDeliveryState.index) {
      return FaIcon(FontAwesomeIcons.check,
          color: Theme.of(context).iconTheme.color);
    }
    if (index == _updatedDeliveryState.index) {
      return FaIcon(FontAwesomeIcons.check, color: Colors.lightGreen);
    }
    return null;
  }
}
