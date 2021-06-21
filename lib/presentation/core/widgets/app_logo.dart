import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/fast-delivery.svg',
          fit: BoxFit.cover,
          height: kToolbarHeight,
          color: Color(0xFFef5448),
        ),
        SizedBox(
          width: 6,
        ),
        Text.rich(
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
            fontSize: SizeConfig.defaultSize * 2,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
