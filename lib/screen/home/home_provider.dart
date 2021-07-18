import 'dart:convert';

import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/common/api_request_object.dart';
import 'package:allgo_app/common/api_url.dart';
import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:allgo_app/model/response.dart';

class HomeProvider {
  void getPortfolioAll(
      {Function()? beforeSend,
      Function(List<AgPortfolio>? list)? onSuccess,
      Function(dynamic error)? onError}) {
    ApiRequest(url: setRequestUrl(URL_AG_PORTFOLIO_ALL), data: null).get(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          print("getPortfolioAll :: onSuccess");
          // print(jsonDecode(jsonEncode(data))['data'] as List);
          onSuccess!((jsonDecode(jsonEncode(data))['data'] as List)
              .map((postJson) => AgPortfolio.fromJson(postJson))
              .toList());
        },
        onError: (error) => {
              if (error != null) {onError!(error)},
            });
  }

  void getPortfolioTypePost(
      {Function()? beforeSend,
      Function(List<AgPortfolio>? list)? onSuccess,
      Function(dynamic error)? onError,
      dynamic portfolio}) {
    ApiRequest(
      url: setRequestUrl(URL_AG_PORTFOLIO_TYPE_POST),
      data: portfolio,
    ).post(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          print("getPortfolioTypePost :: onSuccess :: ");

          // print(jsonDecode(jsonEncode(data))['data'] as List);
          onSuccess!((jsonDecode(jsonEncode(data))['data'] as List)
              .map((postJson) => AgPortfolio.fromJson(postJson))
              .toList());
        },
        onError: (error) => {
              if (error != null) {onError!(error)},
            });
  }
}
