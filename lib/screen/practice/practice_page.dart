import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/practice/component/practice_list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:allgo_app/screen/practice/practice_controller.dart';

class PracticePage extends GetView<PracticeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Container(
        child: GetBuilder<PracticeController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postsList.length,
                itemBuilder: (cotext, index) =>
                    PracticeListItem(post: controller.postsList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
