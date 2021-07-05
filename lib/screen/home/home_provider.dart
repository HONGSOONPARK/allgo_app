import 'dart:convert';

import 'package:allgo_app/common/api_request.dart';
import 'package:allgo_app/common/api_url.dart';
import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:allgo_app/model/response.dart';

class HomeProvider {
  void getPortfolioAll(
      {Function()? beforeSend,
      Function(List<AgPortfolio>? list)? onSuccess,
      Function(dynamic? error)? onError}) {
    ApiRequest(url: setRequestUrl(URL_AG_PORTFOLIO_ALL), data: null).get(
        beforeSend: () => {
              if (beforeSend != null) {beforeSend()}
            },
        onSuccess: (data) {
          print("getPortfolioAll :: onSuccess");

          print("\n====================:: " + data.toString());

          print(
              "\n====================::::============::::============::::============::::============::::============::::");

          // print("\n====================:: " +
          //     jsonDecode(jsonEncode(data))['data'].toString());

          print(jsonDecode(jsonEncode(data))['data'] as List);

          // List<AgPortfolio>? list =
          //     jsonDecode(jsonEncode(data))['data'] as List;

          // print(list!.length);

          onSuccess!((jsonDecode(jsonEncode(data))['data'] as List)
              .map((postJson) => AgPortfolio.fromJson(postJson))
              .toList());
        },
        onError: (error) => {
              if (error != null) {onError!(error)},
            });
  }
}
