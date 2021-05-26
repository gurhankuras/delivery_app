import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class AppBarChart extends StatelessWidget {
  final List<int> quantities;
  final String title;
  // final Map<String, dynamic> map;
  final List<String> labels;

  AppBarChart({
    // required this.map,
    Key? key,
    required this.quantities,
    required this.title,
    required this.labels,
  }) : super(key: key);
  // final keys = [];
  // final values = [];

  // .entries.forEach((entry) {
  //   keys.add(entry.key);
  //   values.add(entry.value);

// assert(quantities.length == labels.length)
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize)),
        color: const Color(0xff2c4260),
        child: BarChart(
          BarChartData(
              axisTitleData:
                  FlAxisTitleData(show: true, topTitle: getTopTitle(context)),
              alignment: BarChartAlignment.spaceAround,
              maxY: getMaxY(),
              barTouchData: BarTouchData(
                enabled: false,
                touchTooltipData: BarTouchTooltipData(
                  tooltipBgColor: Colors.transparent,
                  tooltipPadding: const EdgeInsets.all(0),
                  tooltipMargin: 8,
                  getTooltipItem: (
                    BarChartGroupData group,
                    int groupIndex,
                    BarChartRodData rod,
                    int rodIndex,
                  ) {
                    return BarTooltipItem(
                      rod.y.round().toString(),
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
              titlesData: getTitles(),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: getBarGroups()),
        ),
      ),
    );
  }

  AxisTitle getTopTitle(BuildContext context) {
    return AxisTitle(
      showTitle: true,
      titleText: title,
      textStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
            color: Colors.white,
            fontSize: SizeConfig.defaultSize * 1.6,
          ),
      reservedSize: SizeConfig.defaultSize * 3,
    );
  }

  double getMaxY() {
    final maxY =
        quantities.reduce((value, element) => max(value, element)).toDouble();
    return maxY * 1.2;
  }

  FlTitlesData getTitles() {
    return FlTitlesData(
      show: true,
      bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
          margin: 15,
          getTitles: mapXToTitle),
      leftTitles: SideTitles(
        showTitles: false,
      ),
    );
  }

  String mapXToTitle(double value) {
    return labels[value.toInt()];
  }

  List<BarChartGroupData> getBarGroups() {
    final rodColors = [Colors.orangeAccent, Colors.deepOrange];
    return quantities
        .asMap()
        .entries
        .map(
          (entry) => BarChartGroupData(
            x: entry.key,
            barRods: [
              BarChartRodData(
                y: entry.value.toDouble(),
                colors: rodColors,
              )
            ],
            showingTooltipIndicators: [0],
          ),
        )
        .toList();
  }
}
