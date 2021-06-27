import 'package:delivery_app/infastructure/auth/auth_service.dart';
import 'package:delivery_app/infastructure/auth/token_cache_service.dart';
import 'package:delivery_app/infastructure/services/cache_manager.dart';
import 'package:delivery_app/infastructure/services/simple_type_key_generator.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

// TODO: depend on abstract types
Future<void> setup() async {
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<CacheService>(CacheService(
    prefs: prefs,
    keyGenerator: SimpleTypeKeyGenerator(),
  ));
  getIt.registerSingleton<TokenCacheService>(
    TokenCacheService(cacheService: getIt<CacheService>()),
  );

  getIt.registerSingleton<AuthService>(
    AuthService(tokenService: getIt<TokenCacheService>()),
  );
}
