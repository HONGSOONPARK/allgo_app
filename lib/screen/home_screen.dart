import 'package:allgo_app/widget/home_widget/event_banner.dart';
import 'package:allgo_app/widget/home_widget/my_algorithm.dart';
import 'package:allgo_app/widget/home_widget/service_info.dart';
import 'package:allgo_app/widget/home_widget/three_month.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ThreeMonth(),
        MyAlgorithm(),
        ServiceInfo(),
        EventBanner(),
      ],
    );
  }
}
