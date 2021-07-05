// import 'package:allgo_app/screen/algorithm_screen.dart';
// import 'package:allgo_app/screen/login_screen.dart';
// import 'package:allgo_app/screen/splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:allgo_app/screen/home_screen.dart';
// import 'package:allgo_app/widget/basic/bottom_bar.dart';
// import 'package:allgo_app/widget/basic/top_bar.dart';
// import 'package:get/get.dart';

// void main() => runApp(new GetMaterialApp(
//       home: new SplashScreen(),
//       routes: <String, WidgetBuilder>{
//         '/MainScreen': (BuildContext context) => new MyApp()
//       },
//     ));

// class MyApp extends StatefulWidget {
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late TabController controller;

//   @override
//   void initState() {
//     super.initState();
//     _init();
//   }

//   _init() async {
//     //오래걸리는 작업 수행

//     // WidgetsFlutterBinding.ensureInitialized();
//     // await Firebase.initializeApp();
//     // // FirebaseService().registerToken();
//     // FirebaseService();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'ALLGO',
//       theme: ThemeData(
//         primaryColor: Color(0xff082640),
//         accentColor: Color(0xff61788C),
//       ),
//       home: DefaultTabController(
//         length: 3,
//         initialIndex: 0,
//         child: Scaffold(
//           resizeToAvoidBottomInset: false,
//           appBar: TopBar(),
//           body: TabBarView(
//             // physics: NeverScrollableScrollPhysics(),
//             children: <Widget>[
//               HomeScreen(),
//               AlgorithmScreen(),
//               LoginScreen(),
//             ], // <Widget>[]
//           ), // TabBarView
//           bottomNavigationBar: Bottom(),
//         ), // Scaffold
//       ),
//       // DefaultTabController
//     );
//   }
// }

import 'package:allgo_app/routes/app_pages.dart';
import 'package:allgo_app/routes/app_routes.dart';
import 'package:allgo_app/screen/dashboard/dashboard_controller.dart';
import 'package:allgo_app/screen/firebase/firebase_controller.dart';
import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:allgo_app/screen/info/info_controller.dart';
import 'package:allgo_app/screen/setting/setting_controller.dart';
import 'package:allgo_app/screen/splash/splash_controller.dart';
import 'package:allgo_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization.then((value) {
    Get.put(SplashController());
    Get.put(FirebaseController());
    Get.lazyPut(() => DashboardController());

    // Get.lazyPut(() => HomeController());
    // Get.lazyPut(() => InfoController());
    // Get.lazyPut(() => SettingController());
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.SPLASH,
      getPages: AppPages.list,
      debugShowCheckedModeBanner: false,
      title: 'project allgo',
      darkTheme: AppThemes.dark,
      theme: AppThemes.light,
      themeMode: ThemeMode.system,
    );
  }
}
