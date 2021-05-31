import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback click;
  final Color? color;

  const AppButton({
    Key? key,
    required this.text,
    required this.click,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                  color ?? Theme.of(context).colorScheme.primary)),
          onPressed: click,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: SizeConfig.defaultSize),
            child: Text(
              text,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    letterSpacing: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          )),
    );
  }
}
