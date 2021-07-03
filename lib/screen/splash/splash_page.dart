import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<SplashController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: ListView.builder(
                  itemCount: controller.response.length,
                  itemBuilder: (cotext, index) => Center(
                        child: Text(
                          controller.response[index].toString(),
                        ),
                      )),
            );
          },
        ),
      ),
    );
  }
}
