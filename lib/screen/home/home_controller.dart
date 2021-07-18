import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:allgo_app/screen/home/home_provider.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final String title = 'Home Title';

  List<AgPortfolio> portfolioList = [];
  late AgPortfolio portfolioData;
  bool isLoading = true;
  String portfolioType = 'ALL';

  @override
  void onReady() {
    print('@onReady HomeController');
  }

  @override
  void onInit() {
    print('@onInit HomeController');
    // HomeProvider().getPortfolioAll(
    //   beforeSend: () {
    //     print('before send');
    //   },
    //   onSuccess: (list) {
    //     portfolioList.addAll(list!);
    //     isLoading = false;
    //     update();
    //   },
    //   onError: (error) {
    //     print('onError');
    //     isLoading = false;
    //     update();
    //   },
    // );

    // portfolio = {
    // ag_type:column/:orderby
    // }

    //  안씀
    portfolioData = AgPortfolio.fromJson({
      'ag_type': portfolioType,
      'column': 'rate',
      'orderby': 'desc',
    });

    // post 방식으로 api 호출 성공!!!
    // 탭 만들고 구분하자
    // dynamic data = {
    //   'ag_type': portfolioType,
    //   'column': 'rate',
    //   'orderby': 'desc',
    // };
    requestHomeList();
    super.onInit();
  }

  void changeList(type) {
    print('changeList ::' + type);
    portfolioType = type;
    update();
    requestHomeList();
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
