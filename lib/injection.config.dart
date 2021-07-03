// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i14;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i34;

import 'application/auth/auth/auth_bloc.dart' as _i30;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i32;
import 'application/order/confirm_order/bloc/confirm_order_bloc.dart' as _i22;
import 'application/order/order_details/bloc/fetch_order_bloc.dart' as _i25;
import 'application/order/order_form/order_form_data.dart' as _i15;
import 'application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart'
    as _i16;
import 'application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart'
    as _i27;
import 'application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart'
    as _i17;
import 'application/order/search_order/bloc/search_order_bloc.dart' as _i20;
import 'application/statistics/bloc/statistics_bloc.dart' as _i21;
import 'domain/auth/i_auth_service.dart' as _i31;
import 'domain/auth/i_token_cache_service.dart' as _i29;
import 'domain/barcode/i_barcode_scanner_service.dart' as _i4;
import 'domain/core/i_key_generator.dart' as _i7;
import 'domain/core/i_network_connectivity.dart' as _i24;
import 'domain/order/i_order_repository.dart' as _i9;
import 'domain/statistics/i_statistics_repository.dart' as _i12;
import 'infastructure/auth/auth_service.dart' as _i36;
import 'infastructure/auth/token_cache_service.dart' as _i35;
import 'infastructure/barcode/barcode_scanner_service.dart' as _i5;
import 'infastructure/barcode/fake_barcode_scanner_service.dart' as _i6;
import 'infastructure/core/connectivity_dio_checker_interceptor.dart' as _i23;
import 'infastructure/core/dio_module.dart' as _i37;
import 'infastructure/core/image_picker_module.dart' as _i38;
import 'infastructure/core/network_connectivity.dart' as _i33;
import 'infastructure/core/shared_prefs_module.dart' as _i39;
import 'infastructure/core/token_dio_interceptor.dart' as _i28;
import 'infastructure/order/order_fake_repository.dart' as _i10;
import 'infastructure/order/order_repository.dart' as _i11;
import 'infastructure/services/cache_manager.dart' as _i26;
import 'infastructure/services/order_service.dart' as _i18;
import 'infastructure/services/pdf_service.dart' as _i19;
import 'infastructure/services/simple_type_key_generator.dart' as _i8;
import 'infastructure/statistics/statistics_repository.dart' as _i13;

const String _prod = 'prod';
const String _dev = 'dev';
const String _fake = 'fake';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final dioModule = _$DioModule();
  final imagePickerModule = _$ImagePickerModule();
  final sharedPrefsModule = _$SharedPrefsModule();
  gh.factory<_i3.BaseOptions>(() => dioModule.baseOptions,
      instanceName: 'BaseOptions');
  gh.factory<_i3.Dio>(
      () => dioModule.dio(get<_i3.BaseOptions>(instanceName: 'BaseOptions')));
  gh.lazySingleton<_i4.IBarcodeScannerService>(
      () => _i5.BarcodeScannerService(),
      registerFor: {_prod});
  gh.lazySingleton<_i4.IBarcodeScannerService>(
      () => _i6.FakeBarcodeScannerService(),
      registerFor: {_dev});
  gh.lazySingleton<_i7.IKeyGenerator>(() => _i8.SimpleTypeKeyGenerator());
  gh.lazySingleton<_i9.IOrderRepository>(() => _i10.OrderFakeRepository(),
      registerFor: {_fake});
  gh.lazySingleton<_i9.IOrderRepository>(
      () => _i11.OrderRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i12.IStatisticsRepository>(
      () => _i13.StatisticsRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i14.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.lazySingleton<_i15.OrderFormData>(() => _i15.OrderFormData());
  gh.factory<_i16.OrderFormPackageBloc>(() => _i16.OrderFormPackageBloc());
  gh.factory<_i17.OrderFormSenderBloc>(() => _i17.OrderFormSenderBloc());
  gh.lazySingleton<_i18.OrderService>(
      () => _i18.OrderService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i19.PdfService>(() => _i19.PdfService());
  gh.factory<_i20.SearchOrderBloc>(() => _i20.SearchOrderBloc());
  gh.factory<_i21.StatisticsBloc>(
      () => _i21.StatisticsBloc(get<_i12.IStatisticsRepository>()));
  gh.factory<_i22.ConfirmOrderBloc>(() => _i22.ConfirmOrderBloc(
      orderRepository: get<_i9.IOrderRepository>(),
      orderFormData: get<_i15.OrderFormData>(),
      pdfService: get<_i19.PdfService>()));
  gh.factory<_i23.ConnectivityDioChecker>(
      () => _i23.ConnectivityDioChecker(get<_i24.INetworkConnectivity>()));
  gh.factory<_i25.FetchOrderBloc>(() => _i25.FetchOrderBloc(
      orderRepository: get<_i9.IOrderRepository>(),
      cache: get<_i26.CacheService>()));
  gh.factory<_i27.OrderFormPersonBloc<dynamic>>(
      () => _i27.OrderFormPersonBloc<dynamic>(get<_i17.OrderFormSenderBloc>()));
  gh.factory<_i28.TokenDioInterceptor>(() => _i28.TokenDioInterceptor(
      tokenCacheService: get<_i29.ITokenCacheService>()));
  gh.factory<_i30.AuthBloc>(() => _i30.AuthBloc(
      cacheService: get<_i26.CacheService>(),
      authService: get<_i31.IAuthService>()));
  gh.factory<_i32.SignInFormBloc>(() => _i32.SignInFormBloc(
      authService: get<_i31.IAuthService>(), authBloc: get<_i30.AuthBloc>()));
  gh.singleton<_i24.INetworkConnectivity>(_i33.NetworkConnectivity());
  await gh.singletonAsync<_i34.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i26.CacheService>(_i26.CacheService(
      keyGenerator: get<_i7.IKeyGenerator>(),
      prefs: get<_i34.SharedPreferences>()));
  gh.singleton<_i29.ITokenCacheService>(
      _i35.TokenCacheService(cacheService: get<_i26.CacheService>()));
  gh.singleton<_i31.IAuthService>(_i36.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i29.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i37.DioModule {}

class _$ImagePickerModule extends _i38.ImagePickerModule {}

class _$SharedPrefsModule extends _i39.SharedPrefsModule {}
