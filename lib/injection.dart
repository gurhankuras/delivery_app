import 'package:delivery_app/infastructure/core/env.dart';
import 'package:delivery_app/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async =>
    $initGetIt(getIt, environment: Env.dev);
