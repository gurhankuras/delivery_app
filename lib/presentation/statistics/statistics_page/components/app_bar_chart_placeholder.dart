import 'package:flutter/material.dart';

import '../../../core/size_config.dart';
import '../../../core/widgets/shimmer_widget.dart';

class AppBarChartPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Card(
        color: const Color(0xFF707070),
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConfig.defaultSize)),
        child: Column(
          children: [
            _buildTitlePlaceholder(),
            Expanded(
              flex: 10,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                      height: 30,
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                      height: 50,
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                      height: 20,
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                      height: 70,
                    ),
                  ),
                  ShimmerWidget(
                    child: Container(
                      color: Colors.grey,
                      width: 15,
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                ),
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                ),
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                ),
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                ),
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                ),
                ShimmerWidget(
                  child: Container(
                    color: Colors.grey,
                    width: 40,
                    height: 15,
                  ),
                )
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Padding _buildTitlePlaceholder() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize * 4,
        vertical: SizeConfig.defaultSize * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: ShimmerWidget(
              child: Container(
                height: SizeConfig.defaultSize * 1.5,
                // width: ,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
