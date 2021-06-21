import 'app_pie_chart_placeholder.dart';
import 'package:flutter/material.dart';

import 'app_bar_chart.dart';
import 'app_bar_chart_placeholder.dart';
import 'app_pie_chart.dart';
import 'future_builder_wrapper.dart';

class ChartFutureBuilder<T> extends StatelessWidget {
  final Future<Map<String, dynamic>?>? chartFuture;
  final bool isPieChart;
  final String title;

  const ChartFutureBuilder({
    Key? key,
    this.title = '',
    this.isPieChart = false,
    required this.chartFuture,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilderWrapper<Map<String, dynamic>?>(
      future: chartFuture,
      onWaiting: (context, snapshot) =>
          isPieChart ? AppPieChartPlaceholder() : AppBarChartPlaceholder(),
      onData: (context, snapshot) => isPieChart
          ? AppPieChart(
              values: snapshot.data!.values.cast<int>().toList(),
              titles: snapshot.data!.keys.toList(),
            )
          : AppBarChart(
              quantities: snapshot.data!.values.cast<int>().toList(),
              title: title,
              labels: snapshot.data!.keys.toList(),
            ),
      onError: (_, __) => Center(child: Text('Something went wrong!')),
      onFallback: (_, __) =>
          isPieChart ? AppPieChartPlaceholder() : AppBarChartPlaceholder(),
    );
  }
}
