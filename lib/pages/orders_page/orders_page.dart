import 'package:flutter/material.dart';

import '../../utils/size_config.dart';
import 'components/order_card.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(tabs: [
            Tab(text: 'Active Orders'),
            Tab(text: 'Completed'),
          ]),
          Expanded(
            child: TabBarView(children: [
              CompletedOrders(),
              Center(
                child: Text('Second!!'),
              ),
            ]),
          )
        ],
      ),
    );
  }
}

class CompletedOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: OrderCard(),
      ),
    );
  }
}
