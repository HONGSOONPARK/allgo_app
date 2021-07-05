import 'package:allgo_app/screen/splash/splash_controller.dart';
import 'package:get/instance_manager.dart';

class FirebaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
