import 'package:flutter/material.dart';
import 'package:allgo_app/screen/home_screen.dart';
import 'package:allgo_app/widget/basic/bottom_bar.dart';
import 'package:allgo_app/widget/basic/top_bar.dart';

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
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              HomeScreen(),
              HomeScreen(),
            ], // <Widget>[]
          ), // TabBarView
          bottomNavigationBar: Bottom(),
        ), // Scaffold
      ),
      // DefaultTabController
    );
  }
}
