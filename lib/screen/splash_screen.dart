import 'dart:async';
import 'dart:io';
import 'package:kakao_flutter_sdk/link.dart';
import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';
import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/app_info.dart';
import 'package:allgo_app/model/response.dart';
import 'package:allgo_app/service/firebase_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
  // final Future<FirebaseApp> _fcmInit = Firebase.initializeApp();
}

class _SplashScreenState extends State<SplashScreen> {
  // late Future<AppInfo> futureAppInfo;
  late Future<ResponseBase> futureResponse;
  late AppInfo appInfo;
  late PackageInfo packageInfo;

  @override
  void initState() {
    super.initState();

    // futureAppInfo = fetchAppInfo();
    _init();
    futureResponse = fetchResponse();
  }

  _init() async {
    //오래걸리는 작업 수행
    //
    await Firebase.initializeApp();

    FirebaseService().registerToken();

    // 앱 기본 정보(버전, 빌드버전);
    packageInfo = await getAppInfo();
    print(packageInfo.appName +
        "::" +
        packageInfo.packageName +
        "::" +
        packageInfo.version +
        "::" +
        packageInfo.buildNumber);

    // var _duration = new Duration(seconds: 2);
    // return new Timer(_duration, navigationPage);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  _goMain(BuildContext context) {
    var _duration = new Duration(seconds: 2);
    if (Platform.isAndroid) {
      if (packageInfo.version != appInfo.aosMarketVersion) {
        dialogMarket(context);
      } else {
        return new Timer(_duration, navigationPage);
      }
    } else if (Platform.isIOS) {
      if (packageInfo.version != appInfo.iosMarketVersion) {
        dialogMarket(context);
      } else {
        return new Timer(_duration, navigationPage);
      }
    }
    // 버전 체크 등 초기화 작업 진행
    //return new Timer(_duration, navigationPage);
    // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/MainScreen');
  }

  @override
  Widget build(BuildContext context) {
    // kakao client id
    KakaoContext.clientId = "0cdc5405e9a41dc9b32c5590b888dacc";
    KakaoContext.javascriptClientId = "3fc56c8fd83c803b2db20ef493cfe970";

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
              //
              Image.asset(
                'images/test_img.png',
                fit: BoxFit.contain,
                height: 200,
              ),

              Text('ALLGO',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(offset: Offset(2, 2), color: Colors.white10)
                      ],
                      decorationStyle: TextDecorationStyle.solid)),

              FutureBuilder<ResponseBase>(
                future: futureResponse,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasData) {
                    appInfo = AppInfo.fromJson(snapshot.data!.data);
                    _goMain(context);
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  }

                  return Container();
                },
              ),
            ],
          ),
        ));
  }

  Future<ResponseBase> fetchResponse() async {
    final response =
        await http.get(Uri.http(getApiUrl(), 'api/appinfo/g/allgo'));

    if (response.statusCode == 200) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('앱 정보를 불러오는데 실패하였습니다.');
    }
  }

  Future<PackageInfo> getAppInfo() async {
    PackageInfo info = await PackageInfo.fromPlatform();
    return info;
  }

  Future dialogMarket(BuildContext context) => Future(() {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('새로운 버전이 출시되었습니다.'),
                  content: Text('최신 버전 업데이트 후 이용가능합니다.'),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop('Yes'),
                        child: Text('업데이트'))
                  ],
                ));
      });

//   Future flutterDialog(BuildContext context) async {
//     await showDialog(
//         context: context,
//         //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
//         barrierDismissible: false,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
//             shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10.0)),
//             //Dialog Main Title
//             title: Column(
//               children: <Widget>[
//                 new Text("Dialog Title"),
//               ],
//             ),
//             //
//             content: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Dialog Content",
//                 ),
//               ],
//             ),
//             actions: <Widget>[
//               new ElevatedButton(
//                 child: new Text("확인"),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ],
//           );
//         });

//     return Container();
//   }
}

// 할것
// 스플래시 화면에서 한번에 가져오는 api 작성하기
// 안드로이드, ios  필요한 권한 무엇인지 확인
// 파이어 베이스 token 얻기 및 db 저장
// 내부 db (room) 사용하여 저장하기
// 카카오톡 로그인 기능
