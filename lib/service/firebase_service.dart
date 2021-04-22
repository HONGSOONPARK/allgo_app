import 'package:firebase_messaging/firebase_messaging.dart';
import 'dart:io';

class FirebaseService {
  static final FirebaseService _manager = FirebaseService._internal();

  late final FirebaseMessaging _firebaseMessaging;

  factory FirebaseService() {
    return _manager;
  }

  FirebaseService._internal() {
    // 초기화 코드
    //
    _firebaseMessaging = FirebaseMessaging.instance;
  }

  void _requestIOSPermission() {
    // _firebaseMessaging.requestNotificationPermissions(
    //     IosNotificationSettings(sound: true, badge: true, alert: true));

    // _firebaseMessaging.onIosSettingsRegistered
    //     .listen((IosNotificationSettings settings) {
    //   print("Settings registered: $settings");
    // });
  }

  void registerToken() {
    if (Platform.isIOS) {
      _requestIOSPermission();
    }

    _firebaseMessaging = FirebaseMessaging.instance;

    _firebaseMessaging.getToken().then((token) {
      print(token);
      // 장고 서버에 token알려주기
    });
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
