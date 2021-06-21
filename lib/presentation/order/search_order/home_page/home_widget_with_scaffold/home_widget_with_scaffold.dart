import 'package:delivery_app/application/order/search_order/bloc/search_field_bloc.dart';
import 'package:delivery_app/presentation/core/widgets/app_logo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../home_page.dart';
import 'package:flutter/material.dart';

class HomePageWithScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppLogo()),
      body: BlocProvider(
        create: (context) => SearchFieldBloc(),
        child: HomePage(),
      ),
    );
  }
}
