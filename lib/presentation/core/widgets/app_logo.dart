import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../image_paths.dart';
import 'app_title.dart';

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
          ImagePaths.fast_delivery,
          fit: BoxFit.cover,
          height: kToolbarHeight,
          color: Color(0xFFef5448),
        ),
        SizedBox(
          width: 6,
        ),
        AppTitle()
      ],
    );
  }
}
