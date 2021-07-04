import 'package:allgo_app/screen/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(SplashController());

    return Scaffold(
      backgroundColor: Color(0xff082640),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/test_img.png',
              fit: BoxFit.contain,
              height: 200,
            ),
            Text(
              'ALLGO',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(offset: Offset(2, 2), color: Colors.white10)
                  ],
                  decorationStyle: TextDecorationStyle.solid),
            ),
            // GetBuilder<SplashController>(
            //   builder: (controller) {
            //     if (controller.getStatus() == 100) {
            //       print("==============================들어왔어");
            //       // Get.to(() => DashboardPage());
            //       // Navigator.of(context).pushReplacementNamed('/dashboard');
            //     }
            //     return Center();
            //   },
            // ),
          ],
        ),
      ),
      // body: Container(
      //   child: GetBuilder<SplashController>(
      //     builder: (controller) {
      //       return Text('test');
      //     },
      //   ),
      // ),
    );
  }
}
