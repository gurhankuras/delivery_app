import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/order/search_order/bloc/search_order_bloc.dart';
import '../../../../../injection.dart';
import '../../../../core/widgets/app_logo.dart';
import '../home_page.dart';

class HomePageWithScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppLogo()),
      body: BlocProvider(
        create: (context) => getIt<SearchOrderBloc>(),
        child: HomePage(),
      ),
    );
  }
}
