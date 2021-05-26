import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class AppBarChartPlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: 1.7,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(SizeConfig.defaultSize)),
            color: const Color(0xFF707070),
            child: Column(
              children: [
                _buildTitlePlaceholder(),
                Expanded(
                  flex: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        color: Colors.grey,
                        width: 15,
                        height: 30,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 15,
                        height: 50,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 15,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 15,
                        height: 20,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 15,
                        height: 70,
                      ),
                      Container(
                        color: Colors.grey,
                        width: 15,
                      )
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    ),
                    Container(
                      color: Colors.grey,
                      width: 40,
                      height: 15,
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
      ],
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
            child: Container(
              height: SizeConfig.defaultSize * 1.5,
              // width: ,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
