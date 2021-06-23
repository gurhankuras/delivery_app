import '../../../../core/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

InputDecoration getTextInputDecoration({
  String? labelText,
  required IconData iconData,
  bool isFontAwesome = false,
}) {
  return InputDecoration(
    labelText: labelText,
    hintText: '',
    hintStyle: TextStyle(
        fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),
    prefixIcon: isFontAwesome
        ? Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize * 1.3),
            child: FaIcon(
              iconData,
              size: 20,
              color: Colors.black.withOpacity(0.5),
            ),
          )
        : Icon(
            iconData,
            color: Colors.black.withOpacity(0.5),
          ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        SizeConfig.defaultSize * 2,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        SizeConfig.defaultSize * 2,
      ),
      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        SizeConfig.defaultSize * 2,
      ),
      borderSide: BorderSide(color: Colors.black.withOpacity(0.1)),
    ),
  );
}
