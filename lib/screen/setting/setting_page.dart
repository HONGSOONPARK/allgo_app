import 'package:allgo_app/screen/setting/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends GetView<SettingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          "SettingPage",
          style: TextStyle(
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
