import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:allgo_app/screen/home/home_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class NotificationController extends GetxController {
  final String title = '실시간 알림';
  var counter = 0.obs;
  bool isLoading = true;
  // static InfoController instance = Get.find();

  List<AgPortfolio> portfolioList = [];
  late AgPortfolio portfolioData;
  String portfolioType = 'ALL';

  get postsList => null;

  @override
  void onReady() {
    print('@onReady NotificationController');
  }

  @override
  void onInit() {
    print('@onInit NotificationController');
    // isLoading = false;
    requestHomeList();
    // update();
  }

  void increaseCounter() {
    counter.value += 1;
  }

  dynamic setData(type) {
    dynamic data = {
      'ag_type': type,
      'column': 'rate',
      'orderby': 'desc',
    };
    return data;
  }

  void requestHomeList() {
    HomeProvider().getPortfolioTypePost(
      beforeSend: () {
        print('before getPortfolioTypePost');
      },
      onSuccess: (list) {
        print('onSuccess getPortfolioTypePost :: HomeController');
        portfolioList.clear();
        portfolioList.addAll(list!);
        isLoading = false;
        update();
      },
      onError: (error) {
        print('onError');
        isLoading = false;
        update();
      },
      portfolio: setData(portfolioType),
    );
  }
}
