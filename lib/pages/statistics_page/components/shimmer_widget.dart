import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatelessWidget {
  final Widget child;
  const ShimmerWidget({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(milliseconds: 1000),
      highlightColor: Colors.white,
      direction: ShimmerDirection.ltr,
      baseColor: Colors.grey,
      child: child,
    );
  }
}
