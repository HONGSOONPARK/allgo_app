import 'dart:async';
import 'dart:convert';
import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/response.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class FirebaseService {
  static final FirebaseService _manager = FirebaseService._internal();

  late final FirebaseMessaging _firebaseMessaging;

  factory FirebaseService() {
    return _manager;
  }

  FirebaseService._internal() {
    // 초기화 코드
    _firebaseMessaging = FirebaseMessaging.instance;
  }
  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/MainScreen');
  }
  void _requestIOSPermission() {
    _firebaseMessaging.requestPermission(
        alert: true, announcement: true, badge: true, sound: true);

    _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  void registerToken() {
    if (Platform.isIOS) {
      _requestIOSPermission();
    }
    _firebaseMessaging.getToken().then((token) {
      print("fcm token ::: " + token.toString());
      fetchToken(token.toString());
    });
  }

  Future<ResponseBase> fetchToken(String token) async {
    var os = Platform.isAndroid
        ? "android"
        : Platform.isIOS
            ? "ios"
            : "none";

    final response = await http.post(
      Uri.http(getApiUrl(), URL_TOKEN_MERGE),
      body: jsonEncode(
        {
          'fcm_token': token,
          'os': os,
          'create_time': DateTime.now().toString()
        },
      ),
      headers: {'Content-Type': "application/json"},
    );
    if (response.statusCode == 201) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('token 갱신 실패');
    }
  }

  void listenFirebaseMessaging() {
    // _firebaseMessaging.configure(
    //   onMessage: (Map<String, dynamic> message) async {
    //     // Triggered if a message is received whilst the app is in foreground
    //     print('on message $message');
    //   },
    //   onResume: (Map<String, dynamic> message) async {
    //     // Triggered if a message is received whilst the app is in background
    //     print('on resume $message');
    //   },
    //   onLaunch: (Map<String, dynamic> message) async {
    //     // Triggered if a message is received if the app was terminated
    //     print('on launch $message');
    //   },
    // );
  }
}
