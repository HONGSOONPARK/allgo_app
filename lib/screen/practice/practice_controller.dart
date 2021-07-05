import 'package:allgo_app/model/practice_info.dart';
import 'package:allgo_app/screen/practice/practice_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class PracticeController extends GetxController {
  final String title = 'Practice Title';

  List<PracticeInfo> postsList = [];
  bool isLoading = true;

  @override
  void onReady() {
    print('@onReady PracticeController');
  }

  @override
  void onInit() {
    print('@onInit PracticeController');
    PracticeProvider().getList(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (posts) {
        print('onSuccess');
        postsList.addAll(posts!);
        isLoading = false;
        update();
        print(posts.length);
      },
      onError: (error) {
        print('onError');
        isLoading = false;
        update();
      },
    );
    super.onInit();
  }
}
