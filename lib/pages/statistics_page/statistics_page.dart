import 'package:delivery_app/extensions/date_time_extension.dart';
import 'package:delivery_app/pages/statistics_page/components/app_pie_chart_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../components/app_button.dart';
import '../../services/order_statistics_service.dart';
import '../../utils/size_config.dart';
import 'components/chart_future_builder.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage>
    with AutomaticKeepAliveClientMixin {
  var _date;
  Future<Map<String, dynamic>?>? quantityChartInfo;
  Future<Map<String, dynamic>?>? amountChartInfo;

  @override
  void initState() {
    super.initState();
    print('initState');
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

    if (date == null || date.isSameDate(_date)) {
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
    super.build(context);
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
          ChartFutureBuilder(
            chartFuture: quantityChartInfo,
            title: 'Total Number Of Products Sent By Categories',
          ),
          ChartFutureBuilder(
            chartFuture: quantityChartInfo,
            isPieChart: true,
          ),
          ChartFutureBuilder(
            chartFuture: amountChartInfo,
            title: 'Total Sum Earned By Category',
          ),
          ChartFutureBuilder(
            chartFuture: amountChartInfo,
            isPieChart: true,
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
