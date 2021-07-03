// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:image_picker/image_picker.dart' as _i16;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i37;

import 'application/auth/auth/auth_bloc.dart' as _i33;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i35;
import 'application/map/bloc/map_bloc.dart' as _i17;
import 'application/order/confirm_order/bloc/confirm_order_bloc.dart' as _i25;
import 'application/order/order_details/bloc/fetch_order_bloc.dart' as _i28;
import 'application/order/order_form/order_form_data.dart' as _i18;
import 'application/order/order_form/order_form_package_bloc/order_form_package_bloc.dart'
    as _i19;
import 'application/order/order_form/order_form_person_bloc/order_form_person_bloc.dart'
    as _i30;
import 'application/order/order_form/order_form_sender_bloc/order_form_sender_bloc.dart'
    as _i20;
import 'application/order/search_order/bloc/search_order_bloc.dart' as _i23;
import 'application/statistics/bloc/statistics_bloc.dart' as _i24;
import 'domain/auth/i_auth_service.dart' as _i34;
import 'domain/auth/i_token_cache_service.dart' as _i32;
import 'domain/barcode/i_barcode_scanner_service.dart' as _i4;
import 'domain/core/i_key_generator.dart' as _i7;
import 'domain/core/i_location_service.dart' as _i9;
import 'domain/core/i_network_connectivity.dart' as _i27;
import 'domain/order/i_order_repository.dart' as _i11;
import 'domain/statistics/i_statistics_repository.dart' as _i14;
import 'infastructure/auth/auth_service.dart' as _i39;
import 'infastructure/auth/token_cache_service.dart' as _i38;
import 'infastructure/barcode/barcode_scanner_service.dart' as _i5;
import 'infastructure/barcode/fake_barcode_scanner_service.dart' as _i6;
import 'infastructure/core/connectivity_dio_checker_interceptor.dart' as _i26;
import 'infastructure/core/dio_module.dart' as _i40;
import 'infastructure/core/image_picker_module.dart' as _i41;
import 'infastructure/core/location_service.dart' as _i10;
import 'infastructure/core/network_connectivity.dart' as _i36;
import 'infastructure/core/shared_prefs_module.dart' as _i42;
import 'infastructure/core/token_dio_interceptor.dart' as _i31;
import 'infastructure/order/order_fake_repository.dart' as _i12;
import 'infastructure/order/order_repository.dart' as _i13;
import 'infastructure/services/cache_manager.dart' as _i29;
import 'infastructure/services/order_service.dart' as _i21;
import 'infastructure/services/pdf_service.dart' as _i22;
import 'infastructure/services/simple_type_key_generator.dart' as _i8;
import 'infastructure/statistics/statistics_repository.dart' as _i15;

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
  gh.lazySingleton<_i9.ILocationService>(() => _i10.LocationService());
  gh.lazySingleton<_i11.IOrderRepository>(() => _i12.OrderFakeRepository(),
      registerFor: {_fake});
  gh.lazySingleton<_i11.IOrderRepository>(
      () => _i13.OrderRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i14.IStatisticsRepository>(
      () => _i15.StatisticsRepository(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i16.ImagePicker>(() => imagePickerModule.imagePicker);
  gh.factory<_i17.MapBloc>(() => _i17.MapBloc(get<_i9.ILocationService>()));
  gh.lazySingleton<_i18.OrderFormData>(() => _i18.OrderFormData());
  gh.factory<_i19.OrderFormPackageBloc>(() => _i19.OrderFormPackageBloc());
  gh.factory<_i20.OrderFormSenderBloc>(() => _i20.OrderFormSenderBloc());
  gh.lazySingleton<_i21.OrderService>(
      () => _i21.OrderService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i22.PdfService>(() => _i22.PdfService());
  gh.factory<_i23.SearchOrderBloc>(() => _i23.SearchOrderBloc());
  gh.factory<_i24.StatisticsBloc>(
      () => _i24.StatisticsBloc(get<_i14.IStatisticsRepository>()));
  gh.factory<_i25.ConfirmOrderBloc>(() => _i25.ConfirmOrderBloc(
      orderRepository: get<_i11.IOrderRepository>(),
      orderFormData: get<_i18.OrderFormData>(),
      pdfService: get<_i22.PdfService>()));
  gh.factory<_i26.ConnectivityDioChecker>(
      () => _i26.ConnectivityDioChecker(get<_i27.INetworkConnectivity>()));
  gh.factory<_i28.FetchOrderBloc>(() => _i28.FetchOrderBloc(
      orderRepository: get<_i11.IOrderRepository>(),
      cache: get<_i29.CacheService>()));
  gh.factory<_i30.OrderFormPersonBloc<dynamic>>(
      () => _i30.OrderFormPersonBloc<dynamic>(get<_i20.OrderFormSenderBloc>()));
  gh.factory<_i31.TokenDioInterceptor>(() => _i31.TokenDioInterceptor(
      tokenCacheService: get<_i32.ITokenCacheService>()));
  gh.factory<_i33.AuthBloc>(() => _i33.AuthBloc(
      cacheService: get<_i29.CacheService>(),
      authService: get<_i34.IAuthService>()));
  gh.factory<_i35.SignInFormBloc>(() => _i35.SignInFormBloc(
      authService: get<_i34.IAuthService>(), authBloc: get<_i33.AuthBloc>()));
  gh.singleton<_i27.INetworkConnectivity>(_i36.NetworkConnectivity());
  await gh.singletonAsync<_i37.SharedPreferences>(() => sharedPrefsModule.prefs,
      preResolve: true);
  gh.singleton<_i29.CacheService>(_i29.CacheService(
      keyGenerator: get<_i7.IKeyGenerator>(),
      prefs: get<_i37.SharedPreferences>()));
  gh.singleton<_i32.ITokenCacheService>(
      _i38.TokenCacheService(cacheService: get<_i29.CacheService>()));
  gh.singleton<_i34.IAuthService>(_i39.AuthService(
      dio: get<_i3.Dio>(), tokenService: get<_i32.ITokenCacheService>()));
  return get;
}

class _$DioModule extends _i40.DioModule {}

class _$ImagePickerModule extends _i41.ImagePickerModule {}

class _$SharedPrefsModule extends _i42.SharedPrefsModule {}
