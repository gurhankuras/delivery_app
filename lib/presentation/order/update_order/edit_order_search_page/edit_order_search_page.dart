import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/order/order_details/bloc/fetch_order_bloc.dart';
import '../../../../application/order/search_order/bloc/search_order_bloc.dart';
import '../../../../domain/barcode/i_barcode_scanner_service.dart';
import '../../../../injection.dart';
import '../../../core/size_config.dart';
import '../../../main_page/components/search_bar.dart';
import '../edit_order_status_page/edit_order_status_page.dart';

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
            onScan: () async {
              final s = await getIt<IBarcodeScannerService>().scan();
              context
                  .read<SearchOrderBloc>()
                  .add(SearchOrderEvent.searchButtonPressed(s));
              FocusScope.of(context).unfocus();
            },
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
