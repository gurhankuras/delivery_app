import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const defaultPadding = 10.0;

TextStyle? sectionTextStyle(BuildContext context) => Theme.of(context)
    .textTheme
    .headline6
    ?.copyWith(fontWeight: FontWeight.w600, color: Color(0xFF3D4B61));
