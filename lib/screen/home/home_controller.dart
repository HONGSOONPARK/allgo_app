import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:allgo_app/screen/home/home_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final String title = 'Home Title';

  List<AgPortfolio> portfolioList = [];
  bool isLoading = true;

  @override
  void onReady() {
    print('@onReady HomeController');
  }

  @override
  void onInit() {
    print('@onInit HomeController');
    HomeProvider().getPortfolioAll(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (list) {
        print('onSuccess=============================');
        portfolioList.addAll(list!);
        isLoading = false;
        update();
        print(portfolioList.length.toString() + " ||| 무야호");
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
