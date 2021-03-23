import 'package:allgo_app/screen/algorithm_screen.dart';
import 'package:allgo_app/screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:allgo_app/screen/home_screen.dart';
import 'package:allgo_app/widget/basic/bottom_bar.dart';
import 'package:allgo_app/widget/basic/top_bar.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALLGO',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: TopBar(),
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              AlgorithmScreen(),
              UserScreen(),
            ], // <Widget>[]
          ), // TabBarView
          bottomNavigationBar: Bottom(),
        ), // Scaffold
      ),
      // DefaultTabController
    );
  }
}

void flutterToast(String msg) {
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT);
}
