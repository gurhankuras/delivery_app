import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../domain/order/value_objects.dart';
import '../../../../infastructure/order/order_dto.dart';
import '../../../../infastructure/services/cache_manager.dart';
import '../../../../injection.dart';
import '../../core/size_config.dart';

class SearchBar extends StatefulWidget {
  final String hintText;
  final void Function(String value) onSearch;
  final VoidCallback? onInfo;
  final VoidCallback? onScan;

  final TextInputType keyboardType;
  const SearchBar({
    Key? key,
    required this.hintText,
    required this.onSearch,
    this.onInfo,
    this.onScan,
    this.keyboardType = TextInputType.text,
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

  List<TrackId> getSuggestions(String pattern) {
    if (pattern.isEmpty) {
      return <TrackId>[];
    }
    // return [];
    final trackIds = getIt<CacheService>()
        .getItems<TrackId>()
        .getOrElse(() => <Map<String, dynamic>>[])
        .map((e) => TrackIdDTO.fromJson(e).toDomain())
        .where((e) => e.value!.contains(pattern));
    return trackIds.toList();
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField(
      noItemsFoundBuilder: (context) => SizedBox.shrink(),
      hideSuggestionsOnKeyboardHide: false,
      textFieldConfiguration: TextFieldConfiguration(
        keyboardType: TextInputType.number,
        controller: _textController,
        decoration: getInputDecoration(),
      ),
      suggestionsCallback: (pattern) async {
        return getSuggestions(pattern);
      },
      itemBuilder: (context, TrackId item) {
        return _buildSuggestion(item, context);
      },
      onSuggestionSelected: (TrackId suggestion) {
        _textController.text = suggestion.value!;
      },
    );
  }

  Padding _buildSuggestion(TrackId item, BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.defaultSize * 2,
        vertical: SizeConfig.defaultSize,
      ),
      child: Text(
        item.value!,
        style: Theme.of(context).textTheme.subtitle1,
      ),
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
      suffixIcon: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.onScan != null)
            IconButton(
              onPressed: () {
                widget.onScan?.call();
              },
              icon: Icon(
                Icons.qr_code_2,
                // size: SizeConfig.defaultSize * 2,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          if (widget.onInfo != null)
            IconButton(
              onPressed: () {
                widget.onInfo?.call();
              },
              icon: FaIcon(
                FontAwesomeIcons.questionCircle,
                size: SizeConfig.defaultSize * 2,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          IconButton(
            onPressed: () {
              widget.onSearch(_textController.text);
            },
            icon: Icon(
              Icons.arrow_forward,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
        ],
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
}
