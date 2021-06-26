import 'package:delivery_app/application/auth/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

import 'app_get_it.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/core/simple_bloc_observer.dart';
import 'infastructure/auth/fake_auth_service.dart';
import 'infastructure/services/order_service.dart';
import 'presentation/auth/sign_in_page.dart';
import 'presentation/core/create_and_log.dart';
import 'providers/order_form_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  await setup();
  Logger.level = Level.debug;

  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (context) => createAndLog(() => OrderService()),
        ),
        Provider(
          create: (context) => OrderFormData(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: BlocProvider(
          create: (context) => SignInFormBloc(
            FakeAuthService(),
            context.read<AuthBloc>(),
          ),
          child: SignInPage(),
        ),
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
