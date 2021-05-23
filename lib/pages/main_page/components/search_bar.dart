import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class SearchBar extends StatefulWidget {
  final String hintText;
  final void Function(String value) onSearch;
  final TextInputType keyboardType;
  const SearchBar({
    Key? key,
    this.keyboardType = TextInputType.text,
    required this.hintText,
    required this.onSearch,
  }) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      controller: _textController,
      onSubmitted: (text) {
        widget.onSearch(text);
      },
      decoration: getInputDecoration(),
    );
  }

  InputDecoration getInputDecoration() {
    return InputDecoration(
      hintText: widget.hintText,
      hintStyle: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.5)),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.black.withOpacity(0.5),
      ),
      suffixIcon: IconButton(
          onPressed: () {
            widget.onSearch(_textController.text);
          },
          icon: Icon(
            Icons.arrow_forward,
            color: Colors.black.withOpacity(0.5),
          )),
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
}
