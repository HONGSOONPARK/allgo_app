import 'dart:ffi';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // final String name = Get.arguments['name'];
  var tabIndex = 0;

  List<String> tabTitle = ['포트폴리오', '참고용', '내 정보'];

  @override
  void onReady() {
    print('@onReady DashboardController');
  }

  @override
  void onInit() {
    print('@onInit DashboardController');
    super.onInit();
  }

  void changeTabIndex(int index) {
    tabIndex = index;

    update();
  }
}
