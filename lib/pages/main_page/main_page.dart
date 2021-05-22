import 'dart:io';

import 'package:delivery_app/pages/home_page/home_page.dart';
import 'package:delivery_app/pages/main_page/components/search_bar.dart';
import 'package:delivery_app/pages/order_details_page/order_details_page.dart';
import 'package:delivery_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(
      child: Text('Yooo'),
    ),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.chartLine),
              label: 'İstatistikler',
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
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svgs/fast-delivery.svg',
                fit: BoxFit.cover,
                height: kToolbarHeight,
                color: Color(0xFFef5448),
              ),
              SizedBox(
                width: 6,
              ),
              Text.rich(
                TextSpan(text: "Deliver", children: [
                  TextSpan(
                    text: "it.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ]),
                style: GoogleFonts.lato().copyWith(
                  fontSize: SizeConfig.defaultSize * 2,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ),
        body: _widgetOptions.elementAt(_currentIndex));
  }
}
