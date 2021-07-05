import 'dart:developer';

import 'package:allgo_app/screen/dashboard/dashboard_controller.dart';
import 'package:allgo_app/screen/push_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    final DashboardController controller = Get.find();

    return Container(
      child: AppBar(
        title: Text(controller.tabTitle[controller.tabIndex]),
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Color(0xff082640),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.mail_rounded),
              onPressed: () {
                Get.to(PushScreen());
                //Navigator.push(context,
                //MaterialPageRoute(builder: (context) => PushScreen()));
                log('onPressed  Push Message Button');
                //flutterToast('푸시화면으로 갈거임');
              }),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
