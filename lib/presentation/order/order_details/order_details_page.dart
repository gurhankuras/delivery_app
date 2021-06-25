import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/core/config.dart';
import '../../../application/order/order_details/bloc/fetch_order_bloc.dart';
import '../../../infastructure/order/order_fake_repository.dart';
import '../../../infastructure/order/order_repository.dart';
import '../../core/size_config.dart';
import 'order_details_page_body.dart';

class OrderDetailPage extends StatelessWidget {
  final String trackNo;

  const OrderDetailPage({
    required this.trackNo,
    Key? key,
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
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => FetchOrderBloc(ORDER_REPO_FAKE_IMPLEMENTATION
                ? OrderFakeRepository()
                : OrderRepository())
              ..add(
                FetchOrderEvent.fetchingStarted(trackNo),
              ),
            child: OrderDetailsPageBody(),
          ),
        ),
      ),
    );
  }
}
