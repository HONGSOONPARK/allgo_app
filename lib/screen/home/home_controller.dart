import 'package:allgo_app/model/post.dart';
import 'package:allgo_app/screen/home/home_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final String title = 'Home Title';

  List<Post> postsList = [];
  bool isLoading = true;

  @override
  void onInit() {
    HomeProvider().getHomeList(
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
