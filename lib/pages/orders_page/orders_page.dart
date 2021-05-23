import 'package:flutter/material.dart';

import '../../utils/size_config.dart';

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
  final stage = 1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(SizeConfig.defaultSize * 1.5)),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: Column(
              children: [
                buildIdRow(context),
                Divider(),
                buildFromTo(context),
                buildAdressesRow(context),
                Divider(),
                Row(
                  children: [
                    StageDot(stage: stage),
                    Expanded(
                      child: StageLine(stage: stage),
                    ),
                    StageDot(stage: stage),
                    Expanded(
                      child: StageLine(stage: stage),
                    ),
                    StageDot(stage: stage),
                    Expanded(
                      child: StageLine(stage: stage),
                    ),
                    StageDot(stage: stage),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildIdRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'ID 249 342 G42',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        TextButton(onPressed: () {}, child: Text('See details'))
      ],
    );
  }
}

Row buildFromTo(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'From',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Colors.black.withOpacity(0.6),
            ),
      ),
      Text(
        'To',
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Colors.black.withOpacity(0.6),
            ),
      ),
    ],
  );
}

Row buildAdressesRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text(
          '3117 Doctors Drive, LA',
        ),
      ),
      Icon(
        Icons.arrow_right,
        size: 40,
        color: Theme.of(context).colorScheme.primary,
      ),
      Expanded(
        child: Text(
          '3117 Doctors Drive, LA',
        ),
      )
    ],
  );
}

class StageLine extends StatelessWidget {
  final int stage;
  const StageLine({
    required this.stage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.defaultSize * 2,
      height: SizeConfig.defaultSize * 0.2,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
      ),
    );
  }
}

class StageDot extends StatelessWidget {
  final int stage;

  const StageDot({
    required this.stage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.defaultSize * 2,
      height: SizeConfig.defaultSize * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 5),
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 0.3),
        child: Container(
          width: SizeConfig.defaultSize,
          height: SizeConfig.defaultSize,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle),
        ),
      ),
    );
  }
}
