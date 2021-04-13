import 'package:allgo_app/screen/algorithm_screen.dart';
import 'package:allgo_app/screen/login_screen.dart';
import 'package:allgo_app/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:allgo_app/screen/home_screen.dart';
import 'package:allgo_app/widget/basic/bottom_bar.dart';
import 'package:allgo_app/widget/basic/top_bar.dart';

void main() => runApp(new MaterialApp(
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/MainScreen': (BuildContext context) => new MyApp()
      },
    ));

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  void initState() {
    super.initState();
  }

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
        initialIndex: 0,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: TopBar(),
          body: TabBarView(
            // physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              AlgorithmScreen(),
              LoginScreen(),
            ], // <Widget>[]
          ), // TabBarView
          bottomNavigationBar: Bottom(),
        ), // Scaffold
      ),
      // DefaultTabController
    );
  }
}

// void flutterToast(String msg) {
//   Fluttertoast.showToast(
//       msg: msg,
//       gravity: ToastGravity.CENTER,
//       backgroundColor: Colors.redAccent,
//       fontSize: 20.0,
//       textColor: Colors.white,
//       toastLength: Toast.LENGTH_SHORT);
// }
