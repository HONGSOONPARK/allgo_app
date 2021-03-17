import 'package:flutter/material.dart';
import 'package:allgo_app/screen/home_screen.dart';
import 'package:allgo_app/widget/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HongFlix',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.greenAccent,
        accentColor: Colors.yellow,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
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
      ), // DefaultTabController
    );
  }
}
