import 'package:delivery_app/components/app_logo.dart';
import 'package:delivery_app/pages/home_page/home_page.dart';
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
