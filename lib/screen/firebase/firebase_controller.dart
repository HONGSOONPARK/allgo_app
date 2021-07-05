import 'dart:io';

import 'package:allgo_app/screen/firebase/firebase_provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class FirebaseController extends GetxController {
  static FirebaseController get to => Get.find();
  FirebaseMessaging _messaging = FirebaseMessaging.instance;
  RxMap<String, dynamic> message = Map<String, dynamic>().obs;

  String testman = "test";

  static final FirebaseController _manager = FirebaseController._internal();
  late final FirebaseMessaging _firebaseMessaging;
  // late BuildContext context;

  factory FirebaseController() {
    return _manager;
  }

  @override
  void onReady() {
    FirebaseController();
  }

  @override
  void onInit() {
    // _initNotification();
    // _getToken();

    super.onInit();
  }

  // Future<void> _getToken() async {
  //   try {
  //     String token = await _messaging.getToken();
  //     print(token);

  //     if (Platform.isIOS) {
  //       _requestIOSPermission();
  //     }
  //     _messaging.getToken().then((token) {
  //       print("fcm token ::: " + token.toString());
  //       fetchToken(token.toString());
  //       _firebaseMessaging.subscribeToTopic("ALLDEV");

  //       _firebaseMessaging.setForegroundNotificationPresentationOptions(
  //           alert: true, badge: true, sound: true);
  //     });
  //   } catch (e) {}
  // }

  FirebaseController._internal() {
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

      updateToken(token.toString());

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

  void updateToken(String token) {
    var os = Platform.isAndroid
        ? "android"
        : Platform.isIOS
            ? "ios"
            : "others";

    dynamic data = {
      'fcm_token': token,
      'os': os,
      'create_time': DateTime.now().toString()
    };

    // 토큰 업데이트
    FirebaseProvider().updateToken(
        beforeSend: () {
          print('before send');
        },
        onSuccess: (data) {
          update();
          print('onSuccess updateToken :: ' + data);
          // print(data.length);
        },
        onError: (error) {
          print('onError=================firebase');
          update();
        },
        postData: data);
  }
}
