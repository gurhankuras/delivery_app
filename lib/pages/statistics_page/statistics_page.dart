import 'package:delivery_app/components/app_button.dart';
import 'package:delivery_app/pages/statistics_page/components/app_bar_chart_placeholder.dart';
import 'package:delivery_app/services/order_statistics_service.dart';
import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'app_chart.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  var _date;
  Future<Map<String, dynamic>?>? quantityChartInfo;
  Future<Map<String, dynamic>?>? amountChartInfo;

  @override
  void initState() {
    super.initState();
    _date = DateTime.now();
    Future.microtask(() {
      setFutures();
      setState(() {});
    });
  }

  Future<void> pickDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime.now().subtract(Duration(days: 365 * 5)),
      lastDate: DateTime.now(),
    );

    if (date == null) {
      return;
    }
    _date = date;
    quantityChartInfo = null;
    amountChartInfo = null;

    setFutures();
    setState(() {});
  }

  void setFutures() {
    quantityChartInfo = context
        .read<OrderStatisticsService>()
        .fetchCategoryStatByDate(Stats.quantity, _date);
    amountChartInfo = context
        .read<OrderStatisticsService>()
        .fetchCategoryStatByDate(Stats.amount, _date);
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return SingleChildScrollView(
      child: Column(
        children: [
          AppButton(text: 'Select Date', click: pickDate),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize),
            child: Text(
              DateFormat.yMd().format(_date),
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          FutureBuilder(
            future: quantityChartInfo,
            builder: (context, AsyncSnapshot<Map<String, dynamic>?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return AppBarChartPlaceholder();
              }
              if (snapshot.hasData) {
                final quantities = snapshot.data!.values.cast<int>().toList();
                final labels = snapshot.data!.keys.toList();

                return AppBarChart(
                  title: 'Total Number Of Products Sent By Categories',
                  quantities: quantities,
                  labels: labels,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Something went wrong!'));
              }
              return AppBarChartPlaceholder();
            },
          ),
          FutureBuilder(
            future: amountChartInfo,
            builder: (context, AsyncSnapshot<Map<String, dynamic>?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return AppBarChartPlaceholder();
              }

              if (snapshot.hasData) {
                final amount = snapshot.data!.values.cast<int>().toList();
                final labels = snapshot.data!.keys.toList();

                return AppBarChart(
                  title: 'Total Sum Earned By Category',
                  quantities: amount,
                  labels: labels,
                );
              } else if (snapshot.hasError) {
                return Center(child: Text('Something went wrong!'));
              }
              return AppBarChartPlaceholder();
            },
          ),
        ],
      ),
    );
  }
}
