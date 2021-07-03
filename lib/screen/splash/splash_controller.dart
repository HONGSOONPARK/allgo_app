import 'package:allgo_app/model/post.dart';
import 'package:allgo_app/model/response.dart';
import 'package:allgo_app/screen/splash/splash_provider.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  List<ResponseBase> response = [];
  bool isLoading = true;

  List<Post> postsList = [];

  @override
  void onInit() {
    SplashProvider().getAppInfo(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (data) {
        print('onSuccess');
        // response.addAll(data!);
        isLoading = false;
        update();
        // print(data.length);
      },
      onError: (error) {
        print('onError');
        isLoading = false;
        update();
      },
    );

    SplashProvider().getHomeList(
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
