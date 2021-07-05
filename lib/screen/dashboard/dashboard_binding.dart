import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:allgo_app/screen/info/info_controller.dart';
import 'package:allgo_app/screen/practice/practice_controller.dart';
import 'package:allgo_app/screen/setting/setting_controller.dart';
import 'package:get/instance_manager.dart';

import 'dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<InfoController>(() => InfoController());
    Get.lazyPut<PracticeController>(() => PracticeController());
    Get.lazyPut<SettingController>(() => SettingController());
  }
}
