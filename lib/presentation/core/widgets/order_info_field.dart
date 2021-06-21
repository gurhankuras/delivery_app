import 'package:flutter/material.dart';

import '../size_config.dart';

class OrderInfoField extends StatelessWidget {
  final String title;
  final String content;
  final CrossAxisAlignment alignment;

  const OrderInfoField({
    Key? key,
    required this.title,
    required this.content,
    this.alignment = CrossAxisAlignment.start,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.black.withOpacity(0.6))),
        SizedBox(
          height: SizeConfig.defaultSize * 0.5,
        ),
        Text(
          content,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 18),
        )
      ],
    );
  }
}
