import 'package:flutter/material.dart';

extension NavigatorStateExtension on NavigatorState {
  void popNTimes(int n) {
    var count = 0;
    popUntil((route) {
      return count++ == n;
    });
  }
}
