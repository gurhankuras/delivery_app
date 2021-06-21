import 'package:delivery_app/application/order/search_order/bloc/search_field_bloc.dart';
import 'package:delivery_app/infastructure/services/order_statistics_service.dart';
import 'package:delivery_app/presentation/core/widgets/app_logo.dart';
import 'package:delivery_app/presentation/home_vm.dart';
import 'package:delivery_app/presentation/order/search_order/home_page/home_page.dart';
import 'package:delivery_app/presentation/statistics/statistics_page/statistics_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../multi_choice_page/multi_choice_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  static final List<Widget> _pages = <Widget>[
    BlocProvider<SearchFieldBloc>(
      create: (context) => SearchFieldBloc(),
      child: HomePage(),
    ),
    // OrdersPage(),
    MultiChoicePage(),
    Provider(
      create: (context) => OrderStatisticsService(),
      child: StatisticsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
      bottomNavigationBar: Consumer<HomeVM>(
        builder: (context, value, child) => BottomNavigationBar(
          items: _navBarItems,
          currentIndex: value.currentPage,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            if (index != value.currentPage) {
              _pageController.jumpToPage(index);
            }
            value.changePage(index);
          },
        ),
      ),
      appBar: appBar(context),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
    );
  }

  final _navBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: 'Home',
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.compare_arrows_outlined),
    //   label: 'Business',
    // ),
    BottomNavigationBarItem(
      icon: Icon(Icons.send),
      label: 'Send',
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.solidChartBar),
      label: 'Statistics',
    ),
  ];

  AppBar appBar(BuildContext context) {
    return AppBar(
      title: AppLogo(),
    );
  }
}
