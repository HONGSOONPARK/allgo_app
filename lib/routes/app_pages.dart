import 'package:allgo_app/routes/app_routes.dart';
import 'package:allgo_app/screen/account/account_binding.dart';
import 'package:allgo_app/screen/account/account_page.dart';
import 'package:allgo_app/screen/dashboard/dashboard_binding.dart';
import 'package:allgo_app/screen/dashboard/dashboard_page.dart';
import 'package:allgo_app/screen/home/home_binding.dart';
import 'package:allgo_app/screen/home/home_page.dart';
import 'package:allgo_app/screen/info/info_binding.dart';
import 'package:allgo_app/screen/info/info_page.dart';
import 'package:allgo_app/screen/setting/setting_binding.dart';
import 'package:allgo_app/screen/setting/setting_page.dart';
import 'package:allgo_app/screen/splash/splash_binding.dart';
import 'package:allgo_app/screen/splash/splash_page.dart';
import 'package:get/get.dart';

class AppPages {
  static var list = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.DASHBOARD,
      page: () => DashboardPage(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.ACCOUNT,
      page: () => AccountPage(),
      binding: AccountBinding(),
    ),
    GetPage(
      name: AppRoutes.INFO,
      page: () => InfoPage(),
      binding: InfoBinding(),
    ),
    GetPage(
      name: AppRoutes.SETTING,
      page: () => SettingPage(),
      binding: SettingBinding(),
    ),
  ];
}
