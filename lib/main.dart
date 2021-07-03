import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';

import 'app.dart';
import 'application/core/simple_bloc_observer.dart';
import 'infastructure/core/env.dart';
import 'injection.dart';
import 'presentation/langs/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureDependencies(Env.dev);
  Bloc.observer = SimpleBlocObserver();
  Logger.level = Level.debug;

  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [
        Locale('en', 'US'),
        Locale('tr', 'TR'),
      ],
      assetLoader: CodegenLoader(),
      fallbackLocale: Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}
