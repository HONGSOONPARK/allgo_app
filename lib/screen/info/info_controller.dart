import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class InfoController extends GetxController {
  final String title = 'Info Title';
  var counter = 0.obs;

  void increaseCounter() {
    counter.value += 1;
  }
}
