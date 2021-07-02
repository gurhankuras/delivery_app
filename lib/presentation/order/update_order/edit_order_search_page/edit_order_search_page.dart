import 'package:another_flushbar/flushbar_helper.dart';
import 'package:delivery_app/application/order/order_details/bloc/fetch_order_bloc.dart';
import 'package:delivery_app/application/order/search_order/bloc/search_order_bloc.dart';
import 'package:delivery_app/injection.dart';
import 'package:delivery_app/presentation/core/size_config.dart';
import 'package:delivery_app/presentation/main_page/components/search_bar.dart';
import 'package:delivery_app/presentation/order/update_order/edit_order_status_page/edit_order_status_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class EditOrderSearchPage extends StatelessWidget {
  const EditOrderSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchOrderBloc(),
      child: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: EditOrderSearchBody(),
          ),
        ),
      ),
    );
  }
}

class EditOrderSearchBody extends StatelessWidget {
  const EditOrderSearchBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocListener<SearchOrderBloc, SearchOrderState>(
          listener: (context, state) {
            state.map(
              initial: (state) {},
              invalidFormat: (state) =>
                  FlushbarHelper.createError(message: state.failure.message)
                      .show(context),
              navigating: (state) =>
                  Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => getIt<FetchOrderBloc>()
                    ..add(FetchOrderEvent.fetchingStarted(state.trackId)),
                  child: EditOrderStatusPage(),
                ),
              )),
            );
          },
          child: SearchBar(
            hintText: 'Search',
            onSearch: (trackId) {
              context
                  .read<SearchOrderBloc>()
                  .add(SearchOrderEvent.searchButtonPressed(trackId));
            },
          ),
        )
      ],
    );
  }
}
