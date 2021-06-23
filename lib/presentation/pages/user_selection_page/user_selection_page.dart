import '../../core/widgets/app_logo.dart';
import '../../home_vm.dart';
import '../../core/size_config.dart';
import '../../order/search_order/home_page/home_widget_with_scaffold/home_widget_with_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../main_page/main_page.dart';

class UserSelectionPage extends StatelessWidget {
  void _navigateToEmployeeApp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ChangeNotifierProvider(
          create: (context) => HomeVM(),
          child: MainPage(),
        ),
      ),
    );
  }

  void _navigateToCustomerApp(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => HomePageWithScaffold(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        title: AppLogo(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.screenWidth * 0.05,
            vertical: SizeConfig.screenHeight * 0.025),
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 45,
              child: ButtonCard(
                press: () => _navigateToCustomerApp(context),
                title: 'Customer',
                iconData: Icons.person,
                color: Theme.of(context).colorScheme.primary.withOpacity(1),
              ),
            ),
            Spacer(
              flex: 5,
            ),
            Expanded(
              flex: 45,
              child: ButtonCard(
                press: () => _navigateToEmployeeApp(context),
                title: 'Employee',
                iconData: Icons.badge_outlined,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonCard extends StatelessWidget {
  final Color? color;
  final String title;
  final IconData iconData;
  final double? iconSize;
  final VoidCallback press;
  const ButtonCard({
    Key? key,
    this.color,
    required this.title,
    required this.iconData,
    this.iconSize,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: press,
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(
          color ?? Theme.of(context).colorScheme.secondary,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * 2.5,
            ),
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(SizeConfig.defaultSize),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * 2.5,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              iconData,
              size: iconSize ?? SizeConfig.defaultSize * 9,
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
