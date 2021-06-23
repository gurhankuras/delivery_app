import '../../../core/size_config.dart';
import 'package:flutter/material.dart';

import 'shimmer_widget.dart';

class AppPieChartPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3,
      child: Card(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: _buildPieChart(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _getIndicators(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPieChart() {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 6),
            child: ShimmerWidget(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 11),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _getIndicators() {
    return List.generate(
      6,
      (index) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.defaultSize,
          vertical: SizeConfig.defaultSize * 0.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ShimmerWidget(
              child: Container(
                width: SizeConfig.defaultSize * 1.2,
                height: SizeConfig.defaultSize * 1.2,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              width: SizeConfig.defaultSize,
            ),
            ShimmerWidget(
              child: Container(
                width: SizeConfig.defaultSize * 5,
                height: SizeConfig.defaultSize * 1.2,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
