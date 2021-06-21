import 'package:flutter/material.dart';

class DisabledWidget extends StatelessWidget {
  final double opacity;
  final Widget child;

  const DisabledWidget({
    Key? key,
    this.opacity = 0.8,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      child: Opacity(
        opacity: 0.8,
        child: child,
      ),
    );
  }
}
