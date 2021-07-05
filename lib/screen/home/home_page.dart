import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/home/component/home_list_item.dart';
import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.portfolioList.length,
                itemBuilder: (cotext, index) =>
                    HomeListItem(portfolio: controller.portfolioList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
