import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/notification/notification_bar.dart';
import 'package:allgo_app/screen/dashboard/top_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'component/notification_list_item.dart';
import 'notification_controller.dart';

class NotificationPage extends GetView<NotificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NotificationBar(),
      body: Container(
        child: GetBuilder<NotificationController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.portfolioList.length,
                itemBuilder: (cotext, index) => NotificationListItem(
                    portfolio: controller.portfolioList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
