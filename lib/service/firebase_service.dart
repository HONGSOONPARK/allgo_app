import 'dart:async';
import 'dart:convert';
import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/response.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class FirebaseService {
  static final FirebaseService _manager = FirebaseService._internal();
  late final FirebaseMessaging _firebaseMessaging;
  late BuildContext context;

  factory FirebaseService() {
    return _manager;
  }

  FirebaseService._internal() {
    // 초기화 코드

    _firebaseMessaging = FirebaseMessaging.instance;
    registerToken();
    messageLisener();
    // FirebaseMessaging.onBackgroundMessage(_messageHandler);
  }
  void navigationPage() {
    // Navigator.of(context).pushReplacementNamed('/MainScreen');
  }

  void channel() {}

  void _requestIOSPermission() {
    _firebaseMessaging.requestPermission(
        alert: true, announcement: true, badge: true, sound: true);
  }

  void registerToken() {
    if (Platform.isIOS) {
      _requestIOSPermission();
    }
    _firebaseMessaging.getToken().then((token) {
      print("fcm token ::: " + token.toString());
      fetchToken(token.toString());
      _firebaseMessaging.subscribeToTopic("ALLDEV");

      _firebaseMessaging.setForegroundNotificationPresentationOptions(
          alert: true, badge: true, sound: true);
    });
  }

  void messageLisener() {
    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      print(event.notification?.body);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });
  }

  Future<void> _messageHandler(RemoteMessage? message) async {
    print('background message ');
    return;
  }

  Future popNotification(BuildContext context) => Future(() {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('이야호'),
                  content: Text('푸시'),
                  actions: <Widget>[
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop('Yes'),
                        child: Text('업데이트'))
                  ],
                ));
      });

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
}
