import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:allgo_app/screen/practice/practice_controller.dart';
import 'package:get/instance_manager.dart';

class PracticeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PracticeController>(() => PracticeController());
  }
}
