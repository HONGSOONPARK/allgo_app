import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // final String name = Get.arguments['name'];
  var tabIndex = 0;

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
