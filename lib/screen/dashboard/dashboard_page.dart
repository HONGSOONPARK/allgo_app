import 'package:allgo_app/screen/dashboard/dashboard_controller.dart';
import 'package:allgo_app/screen/home/home_page.dart';
import 'package:allgo_app/screen/info/info_page.dart';
import 'package:allgo_app/screen/practice/practice_page.dart';
import 'package:allgo_app/screen/setting/setting_page.dart';
import 'package:allgo_app/widget/basic/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(builder: (controller) {
      return Scaffold(
        appBar: TopBar(),
        body: SafeArea(
          child: IndexedStack(index: controller.tabIndex, children: [
            HomePage(),
            PracticePage(),
            SettingPage(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.redAccent,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              _bottomNavigationBarItem(icon: Icons.home, label: '메인'),
              _bottomNavigationBarItem(icon: Icons.assessment, label: '연습한거'),
              _bottomNavigationBarItem(icon: Icons.account_box, label: '내 정보'),
            ]),
      );
    });
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        size: 20,
      ),
      label: label,
    );
  }
// assessment
// account_box

}
