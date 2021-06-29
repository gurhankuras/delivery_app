// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i30;

import 'application/auth/auth/auth_bloc.dart' as _i26;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i28;
import 'application/order/confirm_order/bloc/confirm_order_bloc.dart' as _i18;
import 'application/order/order_details/bloc/fetch_order_bloc.dart' as _i21;
import 'application/order/order_form/order_form_data.dart' as _i11;
import 'application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart'
    as _i12;
import 'application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart'
    as _i23;
import 'application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart'
    as _i13;
import 'application/order/search_order/bloc/search_order_bloc.dart' as _i16;
import 'application/statistics/bloc/statistics_bloc.dart' as _i17;
import 'domain/auth/i_auth_service.dart' as _i27;
import 'domain/auth/i_token_cache_service.dart' as _i25;
import 'domain/core/i_key_generator.dart' as _i4;
import 'domain/core/i_network_connectivity.dart' as _i20;
import 'domain/order/i_order_repository.dart' as _i6;
import 'domain/statistics/i_statistics_repository.dart' as _i9;
import 'infastructure/auth/auth_service.dart' as _i32;
import 'infastructure/auth/token_cache_service.dart' as _i31;
import 'infastructure/core/connectivity_dio_checker_interceptor.dart' as _i19;
import 'infastructure/core/dio_module.dart' as _i33;
import 'infastructure/core/network_connectivity.dart' as _i29;
import 'infastructure/core/shared_prefs_module.dart' as _i34;
import 'infastructure/core/token_dio_interceptor.dart' as _i24;
import 'infastructure/order/order_fake_repository.dart' as _i7;
import 'infastructure/order/order_repository.dart' as _i8;
import 'infastructure/services/cache_manager.dart' as _i22;
import 'infastructure/services/order_service.dart' as _i14;
import 'infastructure/services/pdf_service.dart' as _i15;
import 'infastructure/services/simple_type_key_generator.dart' as _i5;
import 'infastructure/statistics/statistics_repository.dart' as _i10;

const String _fake = 'fake';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i3.BaseOptions>(() => dioModule.baseOptions,
      instanceName: 'BaseOptions');
  gh.factory<_i3.Dio>(
      () => dioModule.dio(get<_i3.BaseOptions>(instanceName: 'BaseOptions')));
  gh.lazySingleton<_i4.IKeyGenerator>(() => _i5.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i6.IOrderRepository>(() => _i7.OrderFakeRepository(),
      registerFor: {_fake});
  gh.lazySingleton<_i6.IOrderRepository>(
      () => _i8.OrderRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i9.IStatisticsRepository>(
      () => _i10.StatisticsRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i11.OrderFormData>(() => _i11.OrderFormData());
  gh.factory<_i12.OrderFormPackageBloc>(() => _i12.OrderFormPackageBloc());
  gh.factory<_i13.OrderFormSenderBloc>(() => _i13.OrderFormSenderBloc());
  gh.lazySingleton<_i14.OrderService>(
      () => _i14.OrderService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i15.PdfService>(() => _i15.PdfService());
  gh.factory<_i16.SearchOrderBloc>(() => _i16.SearchOrderBloc());
  gh.factory<_i17.StatisticsBloc>(
      () => _i17.StatisticsBloc(get<_i9.IStatisticsRepository>()));
  gh.factory<_i18.ConfirmOrderBloc>(() => _i18.ConfirmOrderBloc(
      orderRepository: get<_i6.IOrderRepository>(),
      orderFormData: get<_i11.OrderFormData>(),
      pdfService: get<_i15.PdfService>()));
  gh.factory<_i19.ConnectivityDioChecker>(
      () => _i19.ConnectivityDioChecker(get<_i20.INetworkConnectivity>()));
  gh.factory<_i21.FetchOrderBloc>(() => _i21.FetchOrderBloc(
      orderRepository: get<_i6.IOrderRepository>(),
      cache: get<_i22.CacheService>()));
  gh.factory<_i23.OrderFormPersonBloc<dynamic>>(
      () => _i23.OrderFormPersonBloc<dynamic>(get<_i13.OrderFormSenderBloc>()));
  gh.factory<_i24.TokenDioInterceptor>(() => _i24.TokenDioInterceptor(
      tokenCacheService: get<_i25.ITokenCacheService>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(
      cacheService: get<_i22.CacheService>(),
      authService: get<_i27.IAuthService>()));
  gh.factory<_i28.SignInFormBloc>(() => _i28.SignInFormBloc(
      authService: get<_i27.IAuthService>(), authBloc: get<_i26.AuthBloc>()));
  gh.singleton<_i20.INetworkConnectivity>(_i29.NetworkConnectivity());
  await gh.singletonAsync<_i30.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i22.CacheService>(_i22.CacheService(
      keyGenerator: get<_i4.IKeyGenerator>(),
      prefs: get<_i30.SharedPreferences>()));
  gh.singleton<_i25.ITokenCacheService>(
      _i31.TokenCacheService(cacheService: get<_i22.CacheService>()));
  gh.singleton<_i27.IAuthService>(_i32.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i25.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i33.DioModule {}

class _$SharedPrefsModule extends _i34.SharedPrefsModule {}
