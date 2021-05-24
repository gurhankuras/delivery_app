import 'package:clipboard/clipboard.dart';
import 'package:delivery_app/components/stage/stage_manager.dart';
import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import '../orders_page.dart';

class OrderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final stage = 1;

    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 1.5)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
        child: Column(
          children: [
            buildIdRow(context),
            Divider(),
            buildFromTo(context),
            buildAdressesRow(context),
            Divider(),
            StageManager(stage: stage, dotCount: 4),
            SizedBox(height: SizeConfig.defaultSize * 2),
            Text('Package picked, courier is delivering your package...'),
            SizedBox(height: SizeConfig.defaultSize * 2),
          ],
        ),
      ),
    );
  }

  Row buildIdRow(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'ID 249 342 G42',
          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Tooltip(
          message: 'Copy ID',
          child: IconButton(
            splashRadius: SizeConfig.defaultSize * 1.2,
            onPressed: () {
              FlutterClipboard.copy('249 342 G42').then(
                (value) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(milliseconds: 300),
                    content: Text('Copied!'),
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.content_copy,
              size: SizeConfig.defaultSize * 1.5,
            ),
          ),
        ),
        Spacer(),
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
