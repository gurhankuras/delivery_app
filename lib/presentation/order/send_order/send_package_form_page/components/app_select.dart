import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';

import 'my_selection.dart';

class AppSelect extends StatefulWidget {
  final String title;
  final List<String> selectNames;
  final Function(int currentIndex, String selectedName)? onSelectedItemChanged;

  const AppSelect({
    Key? key,
    required this.title,
    required this.selectNames,
    this.onSelectedItemChanged,
  }) : super(key: key);

  @override
  _AppSelectState createState() => _AppSelectState();
}

class _AppSelectState extends State<AppSelect> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontWeight: FontWeight.w500),
        ),
        DirectSelect(
            itemExtent: 75.0,
            selectedIndex: currentIndex,
            onSelectedItemChanged: (index) {
              setState(
                () {
                  currentIndex = index!;
                },
              );
              widget.onSelectedItemChanged
                  ?.call(currentIndex, widget.selectNames[currentIndex]);
            },
            mode: DirectSelectMode.tap,
            items: _buildSelects(),
            child: MySelectionItem(
              isForList: false,
              title: widget.selectNames[currentIndex],
            )),
      ],
    );
  }

  List<MySelectionItem> _buildSelects() {
    return widget.selectNames.map((e) => MySelectionItem(title: e)).toList();
  }
}
