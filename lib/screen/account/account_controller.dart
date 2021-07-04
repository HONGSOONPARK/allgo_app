import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  final String name = Get.arguments['name'];

  @override
  void onReady() {
    print('@onReady AccountController');
  }

  @override
  void onInit() {
    print('@onInit AccountController');
    super.onInit();
  }
}
