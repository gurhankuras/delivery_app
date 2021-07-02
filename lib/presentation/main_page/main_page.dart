import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/order/search_order/bloc/search_order_bloc.dart';
import '../../../application/statistics/bloc/statistics_bloc.dart';
import '../../../infastructure/statistics/statistics_repository.dart';
import '../../../injection.dart';
import '../auth/sign_in_page.dart';
import '../core/size_config.dart';
import '../core/widgets/app_logo.dart';
import '../home_vm.dart';
import '../langs/locale_keys.dart';
import '../order/search_order/home_page/home_page.dart';
import '../pages/multi_choice_page/multi_choice_page.dart';
import '../statistics/statistics_page/statistics_page.dart';

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
    BlocProvider(
      create: (context) => getIt<SearchOrderBloc>(),
      child: HomePage(),
    ),
    // OrdersPage(),
    MultiChoicePage(),
    BlocProvider(
      create: (context) => getIt<StatisticsBloc>()
        ..add(
          StatisticsEvent.fetchingStarted(
            stat: Stat.people_who_receives_the_most,
            date: DateTime.now(),
          ),
        ),
      child: StatisticsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            unauthenticated: (value) =>
                Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => SignInPage(),
              ),
              (route) => false,
            ),
          );
        },
        child: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: _pages,
        ),
      ),
    );
  }

  final _navBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined),
      label: LocaleKeys.home.tr(),
    ),
    // BottomNavigationBarItem(
    //   icon: Icon(Icons.compare_arrows_outlined),
    //   label: 'Business',
    // ),
    BottomNavigationBarItem(
      icon: Icon(Icons.send),
      label: LocaleKeys.send.tr(),
    ),
    BottomNavigationBarItem(
      icon: FaIcon(FontAwesomeIcons.solidChartBar),
      label: LocaleKeys.statistics.tr(),
    ),
  ];

  AppBar appBar(BuildContext context) {
    // EasyLocalization
    return AppBar(
      title: AppLogo(),
      leading: Row(
        children: [
          GestureDetector(
            onTap: () => context.setLocale(Locale('tr', 'TR')),
            child: Icon(Icons.language),
          ),
          GestureDetector(
            onTap: () => context.setLocale(Locale('en', 'US')),
            child: Icon(Icons.language),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          onTap: () => context.read<AuthBloc>().add(AuthEvent.signedOut()),
          child: Padding(
            padding: EdgeInsets.only(right: SizeConfig.defaultSize),
            child: Icon(Icons.logout_rounded),
          ),
        )
      ],
    );
  }
}
