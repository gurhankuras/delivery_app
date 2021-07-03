import '../../../../application/order/update_order/bloc/update_order_bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../../../core/widgets/app_button.dart';
import '../../send_order/send_package_form_page/components/input_decoration.dart';
import 'delivery_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../context_update_order_bloc_x.dart';

class AddUpdateFullScreenDialog extends StatefulWidget {
  const AddUpdateFullScreenDialog({Key? key}) : super(key: key);

  @override
  _AddUpdateFullScreenDialogState createState() =>
      _AddUpdateFullScreenDialogState();
}

class _AddUpdateFullScreenDialogState extends State<AddUpdateFullScreenDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: addButton(context),
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: Center(
              child: UpdateDialogBody(),
            ),
          ),
        ]),
      ),
    );
  }

  BottomAppBar addButton(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 5,
          left: SizeConfig.defaultSize * 2,
          right: SizeConfig.defaultSize * 2,
        ),
        child: AppButton(
          text: 'Add',
          click: () => context
              .read<UpdateOrderBloc>()
              .add(UpdateOrderEvent.orderStateAdded()),
        ),
      ),
    );
  }
}

class UpdateDialogBody extends StatelessWidget {
  const UpdateDialogBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MessageTextField(),
        OrderStatusOptions(
          onSelect: (status) => context.updateOrderBloc
              .add(UpdateOrderEvent.statusChanged(status.index)),
        )
      ],
    );
  }
}

class MessageTextField extends StatelessWidget {
  const MessageTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => context
          .read<UpdateOrderBloc>()
          .add(UpdateOrderEvent.eventMessageChanged(value)),
      decoration:
          getTextInputDecoration(iconData: Icons.cable, labelText: 'Event'),
    );
  }
}

class OrderStatusOptions extends StatelessWidget {
  final Function(DeliveryStatus status) onSelect;

  const OrderStatusOptions({
    Key? key,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: BlocBuilder<UpdateOrderBloc, UpdateOrderState>(
          builder: (context, state) {
            return Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 10,
              children: DeliveryStatus.values
                  .map(
                    (status) => StatusOption(
                      onSelect: onSelect,
                      currentState: DeliveryStatus
                          .values[context.updateOrderBloc.state.status.status!],
                      state: status,
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}

class StatusOption extends StatelessWidget {
  const StatusOption({
    Key? key,
    required this.state,
    required this.onSelect,
    required this.currentState,
  }) : super(key: key);

  final Function(DeliveryStatus status) onSelect;
  final DeliveryStatus currentState;
  final DeliveryStatus state;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelect(state),
      child: Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio<DeliveryStatus>(
                value: state,
                groupValue: currentState,
                onChanged: (value) => onSelect(state)),
            Text(state.str()),
          ],
        ),
      ),
    );
  }
}
