import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTitle extends StatelessWidget {
  final double? fontSize;

  const AppTitle({
    Key? key,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(text: 'Deliver', children: [
        TextSpan(
          text: 'it.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ]),
      style: GoogleFonts.lato().copyWith(
        fontSize: fontSize ?? SizeConfig.defaultSize * 2,
        fontWeight: FontWeight.w500,
        color: Colors.black.withOpacity(0.6),
      ),
    );
  }
}
