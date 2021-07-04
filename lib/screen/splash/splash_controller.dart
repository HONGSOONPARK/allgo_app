import 'package:allgo_app/model/app_info.dart';
import 'package:allgo_app/model/post.dart';
import 'package:allgo_app/routes/app_routes.dart';
import 'package:allgo_app/screen/dashboard/dashboard_page.dart';
import 'package:allgo_app/screen/home/home_page.dart';
import 'package:allgo_app/screen/splash/splash_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController instance = Get.find();

  AppInfo? appInfo;
  bool isLoading = true;
  int splashStatus = 0;

  @override
  void onReady() {
    print("============= :: onReady()");
  }

  @override
  void onInit() {
    print('@onInit DashboardController');

    SplashProvider().getAppInfo(
      beforeSend: () {
        print('before send');
      },
      onSuccess: (data) {
        appInfo = data!;
        splashStatus = 100;
        isLoading = false;
        update();
        print('onSuccess getAppInfo :: ' + appInfo!.toJson().toString());
        goDashboard();
        // print(data.length);
      },
      onError: (error) {
        print('onError');
        splashStatus = 999;
        isLoading = false;
        update();
      },
    );
    super.onInit();
  }

  void goDashboard() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAllNamed(AppRoutes.DASHBOARD);
    });
    // Get.to(() => );
  }

  int getStatus() {
    return splashStatus;
  }
}
