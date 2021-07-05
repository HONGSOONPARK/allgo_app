import 'dart:io';

import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/common/api_url.dart';
import 'package:allgo_app/screen/firebase/firebase_controller.dart';
import 'package:get/get.dart';

class FirebaseProvider {
  static FirebaseController fc = Get.find();
  void updateToken({
    Function()? beforeSend,
    Function(dynamic? body)? onSuccess,
    Function(dynamic? error)? onError,
    dynamic postData,
  }) {
    ApiRequest(
      url: setRequestUrl(URL_TOKEN_MERGE),
      data: postData,
    ).post(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          print("updateToken::====================" + data.toString());
        },
        onError: (error) => {
              if (error != null)
                {
                  onError!(error),
                },
            });
  }
}
