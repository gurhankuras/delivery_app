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
          child: OrderCard()),
    );
  }
}

class StageLine extends StatelessWidget {
  final int stage;
  final int index;

  const StageLine({
    Key? key,
    required this.stage,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filled = index < stage;

    return Container(
      height: SizeConfig.defaultSize * 0.2,
      decoration: BoxDecoration(
          color: filled
              ? Theme.of(context).colorScheme.primary.withOpacity(0.5)
              : null,
          gradient: !filled
              ? LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)
              : null),
    );
  }
}

class StageDot extends StatelessWidget {
  final int stage;
  final int index;

  const StageDot({
    Key? key,
    required this.stage,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dotColor = index <= stage
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.secondary.withOpacity(0.3);

    return Container(
      width: SizeConfig.defaultSize * 2,
      height: SizeConfig.defaultSize * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 5),
        border: Border.all(
          color: dotColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 0.3),
        child: Container(
          width: SizeConfig.defaultSize,
          height: SizeConfig.defaultSize,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}

class StageManager extends StatelessWidget {
  final int stage;
  final int dotCount;
  final Axis direction;
  const StageManager({
    Key? key,
    required this.stage,
    required this.dotCount,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate((dotCount * 2) - 1, (index) {
        final isEven = index % 2 == 0;
        if (isEven) {
          return StageDot(stage: stage, index: index ~/ 2);
        }
        return Expanded(child: StageLine(stage: stage, index: index ~/ 2));
      }),
    );
  }
}
