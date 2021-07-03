import 'dart:convert';

import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/common/api_url.dart';
import 'package:allgo_app/model/app_info.dart';
import 'package:allgo_app/model/post.dart';
import 'package:allgo_app/model/response.dart';

class SplashProvider {
  void getAppInfo(
      {Function()? beforeSend,
      Function(AppInfo? response)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: setRequestUrl(URL_APP_INFO), data: null).get(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          // onSuccess!((data as List)
          //     .map((responseJson) =>
          //         ResponseBase.fromJson(jsonDecode(responseJson)))
          //     .toList());
          // print("onSuccess " + data);
          print(ResponseBase.fromJson(data));
          print("해햐햐햐");
        },
        onError: (error) => {
              if (error != null)
                {
                  onError!(error),
                },
            });
  }

  void getHomeList(
      {Function()? beforeSend,
      Function(List<Post>? posts)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null)
        .get(
            beforeSend: () => {
                  if (beforeSend != null) {beforeSend()}
                },
            onSuccess: (data) {
              onSuccess!((data as List)
                  .map((postJson) => Post.fromJson(postJson))
                  .toList());
            },
            onError: (error) => {
                  if (error != null) {onError!(error)},
                });
  }
}
