import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';

import 'application/auth/auth/auth_bloc.dart';
import 'application/core/simple_bloc_observer.dart';
import 'injection.dart';
import 'presentation/core/constants.dart';
import 'presentation/splash/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  Bloc.observer = SimpleBlocObserver();
  Logger.level = Level.debug;

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: SplashPage(),
        theme: appTheme(context),
      ),
    );
  }

  ThemeData appTheme(BuildContext context) {
    return ThemeData(
      iconTheme: IconThemeData(
        color: Colors.black.withOpacity(0.5),
      ),
      colorScheme: ColorScheme.light(
        primary: kPrimaryColor,
        secondary: Color(0xff2c4260),
      ),
      unselectedWidgetColor: kPrimaryColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kPrimaryColor,
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
      indicatorColor: kPrimaryColor,
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black.withOpacity(0.4),
        labelColor: kPrimaryColor,
      ),
      textTheme: GoogleFonts.latoTextTheme().copyWith(
          headline6: TextStyle(
        color: Color(0xFF3D4B61),
      )),
    );
  }
}
