// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../auth/sign_in_page.dart' as _i4;
import '../order/order_details/order_details_page.dart' as _i7;
import '../order/order_history/orders_page/orders_page.dart' as _i8;
import '../order/search_order/home_page/home_page.dart' as _i6;
import '../order/send_order/send_package_confirmation_page/send_package_confirmation_page.dart'
    as _i10;
import '../order/send_order/send_package_form_page/send_package_form_page.dart'
    as _i9;
import '../order/update_order/edit_order_status_page/edit_order_status_page.dart'
    as _i11;
import '../pages/main_page/main_page.dart' as _i5;
import '../pages/multi_choice_page/multi_choice_page.dart' as _i12;
import '../splash/splash_page.dart' as _i3;
import '../statistics/statistics_page/statistics_page.dart' as _i13;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        }),
    MainRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.MainPage();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomePage();
        }),
    OrderDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<OrderDetailRouteArgs>();
          return _i7.OrderDetailPage(trackNo: args.trackNo, key: args.key);
        }),
    OrdersRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i8.OrdersPage();
        }),
    SendPackageFormRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i9.SendPackageFormPage();
        }),
    SendPackageConfirmationRoute.name: (routeData) =>
        _i1.MaterialPageX<dynamic>(
            routeData: routeData,
            builder: (_) {
              return const _i10.SendPackageConfirmationPage();
            }),
    EditOrderStatusRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i11.EditOrderStatusPage();
        }),
    MultiChoiceRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i12.MultiChoicePage();
        }),
    StatisticsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i13.StatisticsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(MainRoute.name, path: '/main-page'),
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(OrderDetailRoute.name, path: '/order-detail-page'),
        _i1.RouteConfig(OrdersRoute.name, path: '/orders-page'),
        _i1.RouteConfig(SendPackageFormRoute.name,
            path: '/send-package-form-page'),
        _i1.RouteConfig(SendPackageConfirmationRoute.name,
            path: '/send-package-confirmation-page'),
        _i1.RouteConfig(EditOrderStatusRoute.name,
            path: '/edit-order-status-page'),
        _i1.RouteConfig(MultiChoiceRoute.name, path: '/multi-choice-page'),
        _i1.RouteConfig(StatisticsRoute.name, path: '/statistics-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class MainRoute extends _i1.PageRouteInfo {
  const MainRoute() : super(name, path: '/main-page');

  static const String name = 'MainRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/home-page');

  static const String name = 'HomeRoute';
}

class OrderDetailRoute extends _i1.PageRouteInfo<OrderDetailRouteArgs> {
  OrderDetailRoute({required String trackNo, _i2.Key? key})
      : super(name,
            path: '/order-detail-page',
            args: OrderDetailRouteArgs(trackNo: trackNo, key: key));

  static const String name = 'OrderDetailRoute';
}

class OrderDetailRouteArgs {
  const OrderDetailRouteArgs({required this.trackNo, this.key});

  final String trackNo;

  final _i2.Key? key;
}

class OrdersRoute extends _i1.PageRouteInfo {
  const OrdersRoute() : super(name, path: '/orders-page');

  static const String name = 'OrdersRoute';
}

class SendPackageFormRoute extends _i1.PageRouteInfo {
  const SendPackageFormRoute() : super(name, path: '/send-package-form-page');

  static const String name = 'SendPackageFormRoute';
}

class SendPackageConfirmationRoute extends _i1.PageRouteInfo {
  const SendPackageConfirmationRoute()
      : super(name, path: '/send-package-confirmation-page');

  static const String name = 'SendPackageConfirmationRoute';
}

class EditOrderStatusRoute extends _i1.PageRouteInfo {
  const EditOrderStatusRoute() : super(name, path: '/edit-order-status-page');

  static const String name = 'EditOrderStatusRoute';
}

class MultiChoiceRoute extends _i1.PageRouteInfo {
  const MultiChoiceRoute() : super(name, path: '/multi-choice-page');

  static const String name = 'MultiChoiceRoute';
}

class StatisticsRoute extends _i1.PageRouteInfo {
  const StatisticsRoute() : super(name, path: '/statistics-page');

  static const String name = 'StatisticsRoute';
}
