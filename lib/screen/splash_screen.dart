import 'dart:async';

import 'package:allgo_app/model/appInfo.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Future<AppInfo> futureAppInfo;

  @override
  void initState() {
    super.initState();

    futureAppInfo = fetchAppInfo();
  }

  _init() async {
    //오래걸리는 작업 수행
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MainScreen');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // CircularProgressIndicator(
              //     backgroundColor: Colors.white, strokeWidth: 6),
              // SizedBox(height: 20),
              //
              Image.asset(
                'images/test_img.png',
                fit: BoxFit.contain,
                height: 200,
              ),

              Text('짱구는 못말려',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(offset: Offset(2, 2), color: Colors.white10)
                      ],
                      decorationStyle: TextDecorationStyle.solid)),
              FutureBuilder<AppInfo>(
                future: futureAppInfo,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // 성공시
                    _init();
                    print(snapshot.data!.no.toString);
                    print(snapshot.data!.package);
                    print(snapshot.data!.appName);
                    print(snapshot.data!.aosMarketVersion);
                    print(snapshot.data!.aosMinVersion);
                    print(snapshot.data!.iosMarketVersion);
                    print(snapshot.data!.iosMinVersion);
                    print(snapshot.data!.updateDate);
                            } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }
                  return CircularProgressIndicator();
                },
              ),
            ],
          ),
        ));
  }

  Future<AppInfo> fetchAppInfo() async {
    final response =
        await http.get(Uri.http('10.0.2.2:3000', 'api/appinfo/get/allgo'));

    if (response.statusCode == 200) {
      return AppInfo.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('앱 정보를 불러오는데 실패하였습니다.');
    }
  }

  Future<void> flutterDialog(BuildContext context) async {
    showDialog(
        context: context,
        //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            //Dialog Main Title
            title: Column(
              children: <Widget>[
                new Text("Dialog Title"),
              ],
            ),
            //
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Dialog Content",
                ),
              ],
            ),
            actions: <Widget>[
              new ElevatedButton(
                child: new Text("확인"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          );
        });
  }
}
