import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:string_validator/string_validator.dart';

import '../../utils/size_config.dart';
import '../main_page/components/search_bar.dart';
import '../order_details_page/order_details_page.dart';

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
          SearchBar(
            onInfo: () => showMyDialog(context),
            onSearch: (value) {
              final errorMessage = validateTrackId(value);
              if (errorMessage != null) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(errorMessage)));

                return;
              }
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => OrderDetailPage(
                    trackNo: value,
                  ),
                ),
              );
            },
            keyboardType: TextInputType.number,
            hintText: 'Gönderi sorgula',
          ),
        ],
      ),
    );
  }

  Future<Object> showMyDialog(BuildContext context) async {
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
