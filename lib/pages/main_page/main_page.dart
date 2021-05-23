import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/size_config.dart';
import '../home_page/home_page.dart';
import '../send_package_form_page/send_package_form_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Center(
      child: Text('Yooo'),
    ),
    SendPackageFormPage(),
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
            TextSpan(text: 'Deliver', children: [
              TextSpan(
                text: 'it.',
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
    );
  }
}
