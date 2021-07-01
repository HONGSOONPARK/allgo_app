import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'info_controller.dart';

class InfoPage extends GetView<InfoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.title),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Obx(() => Text("Counter ${controller.counter.value}")),
              ElevatedButton(
                  onPressed: () => controller.increaseCounter(),
                  child: Text("add"))
            ],
          ),
        ),
      ),
    );
  }
}
