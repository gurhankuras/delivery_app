import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class StageManager extends StatelessWidget {
  final int stage;
  final int dotCount;
  final Axis direction;
  const StageManager({
    Key? key,
    required this.stage,
    required this.dotCount,
    this.direction = Axis.horizontal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate((dotCount * 2) - 1, (index) {
        final isEven = index % 2 == 0;
        if (isEven) {
          return _StageDot(stage: stage, index: index ~/ 2);
        }
        return Expanded(child: _StageLine(stage: stage, index: index ~/ 2));
      }),
    );
  }
}

class _StageLine extends StatelessWidget {
  final int stage;
  final int index;

  const _StageLine({
    Key? key,
    required this.stage,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final filled = index < stage;

    return Container(
      height: SizeConfig.defaultSize * 0.2,
      decoration: BoxDecoration(
          color: filled
              ? Theme.of(context).colorScheme.primary.withOpacity(0.5)
              : null,
          gradient: !filled
              ? LinearGradient(colors: [
                  Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5),
                ], begin: Alignment.centerLeft, end: Alignment.centerRight)
              : null),
    );
  }
}

class _StageDot extends StatelessWidget {
  final int stage;
  final int index;

  const _StageDot({
    Key? key,
    required this.stage,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dotColor = index <= stage
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).colorScheme.primaryVariant.withOpacity(0.3);

    return Container(
      width: SizeConfig.defaultSize * 2,
      height: SizeConfig.defaultSize * 2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 5),
        border: Border.all(
          color: dotColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(SizeConfig.defaultSize * 0.3),
        child: Container(
          width: SizeConfig.defaultSize,
          height: SizeConfig.defaultSize,
          decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
