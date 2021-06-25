import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/order/order_details/bloc/fetch_order_bloc.dart';
import '../../../domain/core/failures.dart';
import '../../../domain/order/order.dart';
import '../../core/size_config.dart';
import '../../core/widgets/order_info_field.dart';
import '../../core/widgets/sender_receiver_section.dart';

class OrderDetailsPageBody extends StatelessWidget {
  const OrderDetailsPageBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchOrderBloc, FetchOrderState>(
      builder: (context, state) {
        return state.map(
          initial: (state) {
            return Center(child: CircularProgressIndicator());
          },
          loading: (state) {
            return Center(child: CircularProgressIndicator());
          },
          success: (state) {
            return buildContent(context, state.order);
          },
          failure: (state) {
            return _buildError(state.failure);
          },
        );
      },
    );
  }

  Center _buildError(ValueFailure<String> failure) {
    return Center(
      child: Text(failure.message),
    );
  }

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
        OrderInfoField(title: 'Package', content: order.packageName!),
        SizedBox(height: SizeConfig.defaultSize * 2),
        _buildAdditionalInfo(context),
        SizedBox(height: SizeConfig.defaultSize * 3),
        Text(
          'Order Status',
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold, color: Color(0xFF3D4B61)),
        ),
        Column(
          children: order.orderStates != null
              ? order.orderStates!
                  .map(
                    (state) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(state.event ?? 'Not found'),
                      subtitle: Text(state.timeStamp != null
                          ? '${DateFormat.yMMMMd().format(state.timeStamp!)} - ${DateFormat.jm().format(state.timeStamp!)}'
                          : 'Not found'),
                    ),
                  )
                  .toList()
              : [],
        )
      ],
    );
  }

  Widget _buildAdditionalInfo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OrderInfoField(title: 'Category', content: 'Electronics'),
        OrderInfoField(title: 'Weight', content: '<1 kg'),
        OrderInfoField(title: 'Vehicle', content: 'Motorcycle'),
      ],
    );
  }
}
