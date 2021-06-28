// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:delivery_app/presentation/auth/sign_in_page.dart';
import 'package:delivery_app/presentation/order/order_details/order_details_page.dart';
import 'package:delivery_app/presentation/order/order_history/orders_page/orders_page.dart';
import 'package:delivery_app/presentation/order/search_order/home_page/home_page.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_confirmation_page/send_package_confirmation_page.dart';
import 'package:delivery_app/presentation/order/send_order/send_package_form_page/send_package_form_page.dart';
import 'package:delivery_app/presentation/order/update_order/edit_order_status_page/edit_order_status_page.dart';
import 'package:delivery_app/presentation/pages/main_page/main_page.dart';
import 'package:delivery_app/presentation/pages/multi_choice_page/multi_choice_page.dart';
import 'package:delivery_app/presentation/splash/splash_page.dart';
import 'package:delivery_app/presentation/statistics/statistics_page/statistics_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: MainPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: OrderDetailPage),
    AutoRoute(page: OrdersPage),
    AutoRoute(page: SendPackageFormPage),
    AutoRoute(page: SendPackageConfirmationPage),
    AutoRoute(page: EditOrderStatusPage),
    AutoRoute(page: MultiChoicePage),
    AutoRoute(page: StatisticsPage),
  ],
)
class $AppRouter {}
