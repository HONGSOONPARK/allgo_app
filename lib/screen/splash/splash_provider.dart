import 'dart:convert';

import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/common/api_url.dart';
import 'package:allgo_app/model/app_info.dart';
import 'package:allgo_app/model/post.dart';
import 'package:allgo_app/model/response.dart';

class SplashProvider {
  void getAppInfo(
      {Function()? beforeSend,
      Function(AppInfo? appInfo)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: setRequestUrl(URL_APP_INFO), data: null).get(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          onSuccess!(AppInfo.fromJson(ResponseBase.fromJson(data).data));
        },
        onError: (error) => {
              if (error != null)
                {
                  onError!(error),
                },
            });
  }
}
