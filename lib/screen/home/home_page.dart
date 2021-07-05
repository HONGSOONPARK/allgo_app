import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/home/component/home_list_item.dart';
import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.portfolioList.length,
                itemBuilder: (cotext, index) => Container(
                  child: Center(
                    child: Row(
                      children: [
                        Text(controller.portfolioList[index].stock_name
                            .toString())
                      ],
                    ),
                  ),
                ),
                // HomeListItem(portfolio: controller.portfolioList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
