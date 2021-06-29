import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../application/order/search_order/bloc/search_order_bloc.dart';
import '../../../core/assets_constants.dart';
import '../../../core/size_config.dart';
import '../../../core/widgets/showSnackbar.dart';
import '../../../main_page/components/search_bar.dart';
import '../../order_details/order_details_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Center(
      child: Column(
        children: [
          SvgPicture.asset(
            Assets.where_is,
            height: SizeConfig.defaultSize * 17,
          ),
          BlocListener<SearchOrderBloc, SearchOrderState>(
            listener: (context, state) {
              state.maybeMap(
                orElse: () {},
                invalidFormat: (state) {
                  showSnackBar(context, state.failure.message);
                },
                navigating: (state) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return OrderDetailPage(
                          trackNo: state.trackId,
                        );
                      },
                    ),
                  );
                },
              );
            },
            child: SearchBar(
              onInfo: () => showInformationDialog(context),
              onSearch: (value) => context
                  .read<SearchOrderBloc>()
                  .add(SearchOrderEvent.searchButtonPressed(value)),
              keyboardType: TextInputType.number,
              hintText: 'Gönderi sorgula',
            ),
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
                child:
                    SizedBox.expand(child: Image.asset(Assets.track_id_info)),
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
