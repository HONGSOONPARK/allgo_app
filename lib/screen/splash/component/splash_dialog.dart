import 'package:allgo_app/routes/app_routes.dart';
import 'package:allgo_app/screen/dashboard/dashboard_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashDialog extends StatelessWidget {
  final int? status;

  const SplashDialog({Key? key, this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("=========================================================" +
        status.toString());

    if (status == 100) {
      // Get.toEnd(() => AppRoutes.DASHBOARD);
      print("성공!!!");
      Get.off(() => AppRoutes.DASHBOARD);
      //
    } else {
      // Get.to(DashboardPage());
      // Get.snackbar('test', 'test');
      print("롯딩ㅈ둥!!!");
    }
    return Center();
  }
}
