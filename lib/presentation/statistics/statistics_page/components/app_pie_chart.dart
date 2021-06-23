import '../../../core/size_config.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'indicator.dart';

class AppPieChart extends StatefulWidget {
  final List<String> titles;
  final List<int> values;

  static const List<Color> colors = [
    Color(0xff0293ee),
    Color(0xfff8b250),
    Color(0xff845bef),
    Color(0xff13d38e),
    Colors.red,
    Colors.indigo
  ];

  const AppPieChart({Key? key, required this.titles, required this.values})
      : super(key: key);
  @override
  State<StatefulWidget> createState() => PieChart2State();
}

class PieChart2State extends State<AppPieChart> {
  int touchedIndex = -1;

  double mapValueToPercentage(int index, int sum) {
    return (widget.values[index] / sum) * 100;
  }

  int _sum() {
    return widget.values.reduce((value, element) => value + element);
  }

  void onTouched(PieTouchResponse pieTouchResponse) {
    setState(() {
      final desiredTouch = pieTouchResponse.touchInput is! PointerExitEvent &&
          pieTouchResponse.touchInput is! PointerUpEvent;
      if (desiredTouch && pieTouchResponse.touchedSection != null) {
        touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
      } else {
        touchedIndex = -1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            SizedBox(
              height: SizeConfig.defaultSize * 2,
            ),
            Expanded(
              child: _buildPieChart(),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _getIndicators(),
            ),
            SizedBox(
              width: SizeConfig.defaultSize * 3,
            ),
          ],
        ),
      ),
    );
  }

  AspectRatio _buildPieChart() {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          pieTouchData: PieTouchData(touchCallback: onTouched),
          sectionsSpace: 0,
          centerSpaceRadius: 40,
          sections: _showingSections(),
        ),
      ),
    );
  }

  List<PieChartSectionData> _showingSections() {
    final sum = _sum();
    return List.generate(widget.values.length, (i) {
      return _getSection(i, sum);
    });
  }

  PieChartSectionData _getSection(int i, int sum) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 60.0 : 50.0;
    final value = mapValueToPercentage(i, sum);

    return PieChartSectionData(
        color: AppPieChart.colors[i],
        value: value,
        radius: radius,
        title: '${value.round().toStringAsFixed(0)}%',
        titleStyle: _getTextStyle(fontSize));
  }

  TextStyle _getTextStyle(double fontSize) {
    return TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: [
          Shadow(color: Colors.black, blurRadius: SizeConfig.defaultSize * 0.2)
        ]);
  }

  List<Widget> _getIndicators() {
    return List.generate(
      widget.values.length,
      (index) => Padding(
        padding: EdgeInsets.only(bottom: SizeConfig.defaultSize * 0.7),
        child: Indicator(
          color: AppPieChart.colors[index],
          isSquare: true,
          padding: index == touchedIndex
              ? EdgeInsets.zero
              : EdgeInsets.all(SizeConfig.defaultSize * 0.5),
          text: widget.titles[index],
        ),
      ),
    );
  }
}
