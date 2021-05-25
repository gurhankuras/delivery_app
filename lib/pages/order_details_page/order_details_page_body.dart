import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../components/sender_receiver_section.dart';
import '../../dao/order.dart';
import '../../dao/track_id.dart';
import '../../services/cache_manager.dart';
import '../../services/order_service.dart';
import '../../utils/size_config.dart';

class OrderDetailsPageBody extends StatefulWidget {
  final String trackNo;

  const OrderDetailsPageBody({
    required this.trackNo,
    Key? key,
  }) : super(key: key);

  @override
  _OrderDetailsPageBodyState createState() => _OrderDetailsPageBodyState();
}

class _OrderDetailsPageBodyState extends State<OrderDetailsPageBody> {
  Future<Order>? orderFuture;

  @override
  void initState() {
    super.initState();
    orderFuture = context.read<OrderService>().queryTrackId(widget.trackNo);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Order?>(
      future: orderFuture,
      builder: (context, AsyncSnapshot<Order?> snapshot) {
        if (snapshot.hasData) {
          // CacheService.instance.clear()
          // ;
          CacheService.instance
              .saveItem<TrackId>(
                  int.parse(widget.trackNo), TrackId(value: widget.trackNo))
              .then((value) => print(value ? 'Saved' : 'Fail!'));
          return buildContent(context, snapshot.data!);
        } else if (snapshot.hasError) {
          return _buildError();
        } else {
          print(snapshot.connectionState);
          return Center(child: CircularProgressIndicator());
        }
      },
    );
    // buildContent(context);
  }

  Center _buildError() {
    return Center(
      child: Text('Order Not found'),
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
