// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i29;

import 'application/auth/auth/auth_bloc.dart' as _i25;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i27;
import 'application/order/confirm_order/bloc/confirm_order_bloc.dart' as _i17;
import 'application/order/order_details/bloc/fetch_order_bloc.dart' as _i20;
import 'application/order/order_form/order_form_data.dart' as _i10;
import 'application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart'
    as _i11;
import 'application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart'
    as _i22;
import 'application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart'
    as _i12;
import 'application/order/search_order/bloc/search_order_bloc.dart' as _i15;
import 'application/statistics/bloc/statistics_bloc.dart' as _i16;
import 'domain/auth/i_auth_service.dart' as _i26;
import 'domain/auth/i_token_cache_service.dart' as _i24;
import 'domain/core/i_key_generator.dart' as _i4;
import 'domain/core/i_network_connectivity.dart' as _i19;
import 'domain/order/i_order_repository.dart' as _i6;
import 'domain/statistics/i_statistics_repository.dart' as _i8;
import 'infastructure/auth/auth_service.dart' as _i31;
import 'infastructure/auth/token_cache_service.dart' as _i30;
import 'infastructure/core/connectivity_dio_checker_interceptor.dart' as _i18;
import 'infastructure/core/dio_module.dart' as _i32;
import 'infastructure/core/network_connectivity.dart' as _i28;
import 'infastructure/core/shared_prefs_module.dart' as _i33;
import 'infastructure/core/token_dio_interceptor.dart' as _i23;
import 'infastructure/order/order_fake_repository.dart' as _i7;
import 'infastructure/services/cache_manager.dart' as _i21;
import 'infastructure/services/order_service.dart' as _i13;
import 'infastructure/services/pdf_service.dart' as _i14;
import 'infastructure/services/simple_type_key_generator.dart' as _i5;
import 'infastructure/statistics/statistics_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.IOrderRepository>(() => _i7.OrderFakeRepository());
  gh.lazySingleton<_i8.IStatisticsRepository>(
      () => _i9.StatisticsRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i10.OrderFormData>(() => _i10.OrderFormData());
  gh.factory<_i11.OrderFormPackageBloc>(() => _i11.OrderFormPackageBloc());
  gh.factory<_i12.OrderFormSenderBloc>(() => _i12.OrderFormSenderBloc());
  gh.lazySingleton<_i13.OrderService>(
      () => _i13.OrderService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i14.PdfService>(() => _i14.PdfService());
  gh.factory<_i15.SearchOrderBloc>(() => _i15.SearchOrderBloc());
  gh.factory<_i16.StatisticsBloc>(
      () => _i16.StatisticsBloc(get<_i8.IStatisticsRepository>()));
  gh.factory<_i17.ConfirmOrderBloc>(() => _i17.ConfirmOrderBloc(
      orderRepository: get<_i13.OrderService>(),
      orderFormData: get<_i10.OrderFormData>(),
      pdfService: get<_i14.PdfService>()));
  gh.factory<_i18.ConnectivityDioChecker>(
      () => _i18.ConnectivityDioChecker(get<_i19.INetworkConnectivity>()));
  gh.factory<_i20.FetchOrderBloc>(() => _i20.FetchOrderBloc(
      orderRepository: get<_i6.IOrderRepository>(),
      cache: get<_i21.CacheService>()));
  gh.factory<_i22.OrderFormPersonBloc<dynamic>>(
      () => _i22.OrderFormPersonBloc<dynamic>(get<_i12.OrderFormSenderBloc>()));
  gh.factory<_i23.TokenDioInterceptor>(() => _i23.TokenDioInterceptor(
      tokenCacheService: get<_i24.ITokenCacheService>()));
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(
      cacheService: get<_i21.CacheService>(),
      authService: get<_i26.IAuthService>()));
  gh.factory<_i27.SignInFormBloc>(() => _i27.SignInFormBloc(
      authService: get<_i26.IAuthService>(), authBloc: get<_i25.AuthBloc>()));
  gh.singleton<_i19.INetworkConnectivity>(_i28.NetworkConnectivity());
  await gh.singletonAsync<_i29.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i21.CacheService>(_i21.CacheService(
      keyGenerator: get<_i4.IKeyGenerator>(),
      prefs: get<_i29.SharedPreferences>()));
  gh.singleton<_i24.ITokenCacheService>(
      _i30.TokenCacheService(cacheService: get<_i21.CacheService>()));
  gh.singleton<_i26.IAuthService>(_i31.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i24.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i32.DioModule {}

class _$SharedPrefsModule extends _i33.SharedPrefsModule {}
