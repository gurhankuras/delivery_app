import 'package:delivery_app/services/order_statistics_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../components/app_logo.dart';
import '../../utils/size_config.dart';
import '../home_page/home_page.dart';
import '../orders_page/orders_page.dart';
import '../send_package_form_page/send_package_form_page.dart';
import '../statistics_page/statistics_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    OrdersPage(),
    SendPackageFormPage(),
    Provider(
      create: (context) => OrderStatisticsService(Dio()),
      child: StatisticsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.compare_arrows_outlined),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.send),
              label: 'Send',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.solidChartBar),
              label: 'Statistics',
            ),
          ],
          selectedFontSize: 14,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          currentIndex: _currentIndex,
        ),
        appBar: appBar(context),
        body: _widgetOptions.elementAt(_currentIndex));
  }

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: AppLogo(),
    );
  }
}
