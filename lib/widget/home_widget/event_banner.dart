import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/app_banner.dart';
import 'package:allgo_app/model/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class EventBanner extends StatefulWidget {
  _EventBanner createState() => _EventBanner();
}

class _EventBanner extends State<EventBanner> {
  bool isSwitched = false;
  late Future<ResponseBase> futureResponse;
  late AppBanner bannerInfo;

  @override
  void initState() {
    super.initState();
    _init();
    futureResponse = fetchResponse();
  }

  _init() async {}

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: double.infinity,
        height: 180,
        // color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<ResponseBase>(
              future: futureResponse,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasData) {
                  bannerInfo = AppBanner.fromJson(snapshot.data!.data);
                  return Container(
                    child: Column(
                      children: <Widget>[
                        Image.network("${bannerInfo.url_path}")
                      ],
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return Container();
              },
            ),
          ],
        ));
  }

  Future<ResponseBase> fetchResponse() async {
    final response =
        await http.get(Uri.http(getApiUrl(), 'api/main/banner/g/1'));
    if (response.statusCode == 200) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('배너 불러오기 실패');
    }
  }
}
