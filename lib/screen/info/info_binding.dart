import 'package:get/instance_manager.dart';
import 'info_controller.dart';

class InfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoController>(() => InfoController());
  }
}
