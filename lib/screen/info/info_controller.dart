import 'package:allgo_app/screen/dashboard/dashboard_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class InfoController extends GetxController {
  final String title = 'Info Title';
  var counter = 0.obs;

  // static InfoController instance = Get.find();

  @override
  void onReady() {
    print('@onReady InfoController');
  }

  void increaseCounter() {
    counter.value += 1;
  }
}
