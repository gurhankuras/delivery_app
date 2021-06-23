import '../../../../application/order/search_order/bloc/search_field_bloc.dart';
import '../../../core/size_config.dart';
import '../../order_details/order_details_page.dart';
import '../../../pages/main_page/components/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:string_validator/string_validator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  String? validateTrackId(String id) {
    if (id.trim() == '') {
      return 'Must be filled!';
    }
    if (!isInt(id)) {
      return 'Invalid track id';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/svgs/whereis.svg',
            height: SizeConfig.defaultSize * 17,
          ),
          BlocConsumer<SearchFieldBloc, SearchFieldState>(
            listener: (context, state) {
              if (state.infoButtonPressed) {
                showInformationDialog(context);
              } else if (state.searchButtonPressed) {
                final errorMessage = validateTrackId(state.trackId);
                if (errorMessage != null) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(errorMessage)));
                  return;
                }
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => OrderDetailPage(
                      trackNo: state.trackId,
                    ),
                  ),
                );
              }
            },
            builder: (context, state) {
              return SearchBar(
                onInfo: () => context
                    .read<SearchFieldBloc>()
                    .add(SearchFieldEvent.infoButtonPressed()),
                onSearch: (value) => context
                    .read<SearchFieldBloc>()
                    .add(SearchFieldEvent.searchButtonPressed(value)),
                keyboardType: TextInputType.number,
                hintText: 'Gönderi sorgula',
              );
            },
          ),
        ],
      ),
    );
  }

  Future<Object> showInformationDialog(BuildContext context) async {
    return showGeneralDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.8), // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      transitionDuration: Duration(
        milliseconds: 400,
      ), // How long it takes to popup dialog after button click
      pageBuilder: (_, __, ___) {
        // Makes widget fullscreen
        return SizedBox.expand(
          child: Column(
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(SizeConfig.defaultSize),
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              Expanded(
                flex: 10,
                child: SizedBox.expand(
                    child: Image.asset('assets/svgs/track_id_info.png')),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
