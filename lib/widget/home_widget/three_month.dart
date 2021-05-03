import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/app_notice.dart';
import 'package:allgo_app/model/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class ThreeMonth extends StatefulWidget {
  _ThreeMonthState createState() => _ThreeMonthState();
}

class _ThreeMonthState extends State<ThreeMonth> {
  late Future<ResponseBase> futureResponse;
  late AppNotice noticeInfo;
  @override
  void initState() {
    super.initState();

    // futureAppInfo = fetchAppInfo();
    _init();
    futureResponse = fetchResponse();
  }

  _init() async {}

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
    //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.blueGrey, width: 1.5),
    //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       Text(
    //         '태파고는 최근 3개월간',
    //         style: TextStyle(
    //             fontWeight: FontWeight.normal,
    //             fontSize: 20,
    //             color: Colors.black),
    //         textAlign: TextAlign.left,
    //       ),
    //       Text('500만원',
    //           style: TextStyle(
    //               fontWeight: FontWeight.w900,
    //               fontSize: 30,
    //               color: Colors.black)),
    //       Text('수익을 달성했습니다',
    //           style: TextStyle(
    //               fontWeight: FontWeight.normal,
    //               fontSize: 20,
    //               color: Colors.black)),
    //       Container(
    //         padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: <Widget>[
    //             Icon(
    //               Icons.info_outline,
    //               size: 18.5,
    //             ),
    //             SizedBox(
    //               width: 5,
    //             ),
    //             Text(
    //               '투자금액 1000만원 기준',
    //             )
    //           ],
    //         ),
    //       )
    //     ],
    //   ),
    // );

    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey, width: 1.5),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // CircularProgressIndicator(
          //     backgroundColor: Colors.white, strokeWidth: 6),
          // SizedBox(height: 20),

          FutureBuilder<ResponseBase>(
            future: futureResponse,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                noticeInfo = AppNotice.fromJson(snapshot.data!.data);
                return Container(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '태파고는 최근 ${noticeInfo.period}간',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 20,
                            color: Colors.black),
                        textAlign: TextAlign.left,
                      ),
                      Text('${noticeInfo.earningLate} 만원',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30,
                              color: Colors.black)),
                      Text('수익을 달성했습니다',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.black)),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.info_outline,
                              size: 18.5,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '투자금액 ${noticeInfo.cost}만원 기준',
                            )
                          ],
                        ),
                      )
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
      ),
    );

    // return Scaffold(
    //     backgroundColor: Colors.blue,
    //     body: Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: <Widget>[
    //           // CircularProgressIndicator(
    //           //     backgroundColor: Colors.white, strokeWidth: 6),
    //           // SizedBox(height: 20),

    //           // FutureBuilder<ResponseBase>(
    //           //   future: futureResponse,
    //           //   builder: (context, snapshot) {
    //           //     if (snapshot.connectionState == ConnectionState.waiting) {
    //           //       return Center(child: CircularProgressIndicator());
    //           //     } else if (snapshot.hasData) {
    //           //       noticeInfo = AppNotice.fromJson(snapshot.data!.data);
    //           //       return Container(
    //           //         child: Column(
    //           //           children: <Widget>[
    //           //             Text("tes"),
    //           //           ],
    //           //         ),
    //           //       );
    //           //     } else if (snapshot.hasError) {
    //           //       return Text("${snapshot.error}");
    //           //     }

    //           //     return Container();
    //           //   },
    //           // ),
    //         ],
    //       ),
    //     ));
  }

  //

  Future<ResponseBase> fetchResponse() async {
    final response =
        await http.get(Uri.http(getApiUrl(), 'api/main/notice/g/1'));
    if (response.statusCode == 200) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('공지사항 불러오기 실패');
    }
  }
}
