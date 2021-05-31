import 'package:delivery_app/pages/user_selection_page/user_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'pages/main_page/main_page.dart';
import 'providers/home_vm.dart';
import 'providers/order_form_data.dart';
import 'services/cache_manager.dart';
import 'services/order_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheService.instance.initPreferences();
  runApp(MultiProvider(providers: [
    Provider(
      create: (context) => OrderService(),
    ),
    Provider(create: (context) => OrderFormData())
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: UserSelectionPage(),
      theme: appTheme(context),
    );
  }

  ThemeData appTheme(BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: Colors.black.withOpacity(0.5),
      ),
      colorScheme: ColorScheme.light(
        primary: Color(0xFFef5448),
        secondary: Color(0xff2c4260),
      ),
      unselectedWidgetColor: Color(0xFFef5448),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFFef5448),
        unselectedItemColor: Colors.black.withOpacity(0.3),
        type: BottomNavigationBarType.fixed,
      ),
      buttonColor: Theme.of(context).colorScheme.primaryVariant,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
        textTheme: GoogleFonts.latoTextTheme().copyWith(),
        iconTheme: IconThemeData(
          color: Colors.black.withOpacity(0.7),
        ),
      ),
      indicatorColor: Color(0xFFef5448),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black.withOpacity(0.4),
        labelColor: Color(0xFFef5448),
      ),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
          headline6: TextStyle(
        color: Color(0xFF3D4B61),
      )),
    );
  }
}
