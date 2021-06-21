import 'package:delivery_app/presentation/core/widgets/app_logo.dart';

import '../home_page.dart';
import 'package:flutter/material.dart';

class HomePageWithScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: AppLogo()),
      body: HomePage(),
    );
  }
}
