import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../../../application/order/order_details/bloc/fetch_order_bloc.dart';
import '../../../../application/order/update_order/bloc/update_order_bloc.dart';
import '../../../../domain/order/i_order_repository.dart';
import '../../../../domain/order/value_objects.dart';
import 'add_update_fullscreen_dialog.dart';

import '../../../../domain/order/order.dart';
import '../../../../infastructure/services/order_service.dart';
import '../../../../injection.dart';
import '../../../core/size_config.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/disabled_widget.dart';
import '../../../core/widgets/order_info_field.dart';
import 'delivery_status.dart';
import 'editing_dialog.dart';
import 'not_editable_order_info.dart';

class EditOrderStatusPage extends StatefulWidget {
  @override
  _EditOrderStatusPageState createState() => _EditOrderStatusPageState();
}

// TODO REFACTOr

class _EditOrderStatusPageState extends State<EditOrderStatusPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      // _currentDeliveryState == _updatedDeliveryState
      //     ? () async => true
      //     : _onWilPopScopeEditedHandler,
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.08),
            child: BlocConsumer<FetchOrderBloc, FetchOrderState>(
              listener: (context, state) {},
              builder: (context, state) {
                return state.map(
                  initial: (state) =>
                      Center(child: CircularProgressIndicator()),
                  loading: (state) =>
                      Center(child: CircularProgressIndicator()),
                  success: (state) {
                    return BlocProvider(
                      create: (context) => UpdateOrderBloc(
                        order: state.order,
                        repository: getIt<IOrderRepository>(),
                      ),
                      child: LoadedContent(),
                    );
                  },
                  failure: (state) => Text('Fail'),
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  // Future<bool> _onWilPopScopeEditedHandler() async {
  //   final exit = await showDialog(
  //     context: context,
  //     builder: (context) => EditingDialog(),
  //   );
  //   return exit ? true : false;
  // }
}

class LoadedContent extends StatelessWidget {
  const LoadedContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateOrderBloc, UpdateOrderState>(
      builder: (context, state) {
        final updateOrderBloc = Provider.of<UpdateOrderBloc>(
          context,
          listen: false,
        );
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotEditableOrderInfo(order: state.editedOrder),
            OrderStateTransitionInfo(
              currentState: state.fetchedOrder.orderStates?.last.status ?? 0,
              nextState: state.fetchedOrder.orderStates?.last.status ?? 0,
            ),
            Column(
                children: state.editedOrder.orderStates
                        ?.map((orderState) => OrderMovementTile(orderState))
                        .toList() ??
                    []),
            AppButton(
              text: 'Update',
              click: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => BlocProvider.value(
                      value: updateOrderBloc,
                      child: AddUpdateFullScreenDialog(),
                    ),
                    fullscreenDialog: true,
                  ),
                );
              },
            ),
            SizedBox(height: SizeConfig.defaultSize * 2),
          ],
        );
      },
    );
  }
}

class OrderStateTransitionInfo extends StatelessWidget {
  final int currentState;
  final int nextState;

  const OrderStateTransitionInfo({
    Key? key,
    required this.currentState,
    required this.nextState,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: SizeConfig.defaultSize * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          OrderInfoField(
            title: 'Delivery Status',
            content: '$currentState',
            alignment: CrossAxisAlignment.center,
          ),
          Icon(
            Icons.arrow_right_alt_outlined,
            size: SizeConfig.defaultSize * 3,
          ),
          OrderInfoField(
            title: 'Updated Delivery Status',
            content: '$nextState',
            alignment: CrossAxisAlignment.center,
          )
        ],
      ),
    );
  }
}

class OrderMovementTile extends StatelessWidget {
  final OrderStatus orderState;
  const OrderMovementTile(
    this.orderState, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(orderState.event ?? ''),
      trailing: Tooltip(
          message: DeliveryStatus.values[orderState.status!].str(),
          child: Text(DeliveryStatus.values[orderState.status!].str())),
      subtitle: Text(
        orderState.timeStamp != null
            ? DateFormat('yyyy-MM-dd HH:mm:ss').format(orderState.timeStamp!)
            : '',
      ),
    );
  }
}
