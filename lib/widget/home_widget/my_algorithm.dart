import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/app_algorithm.dart';
import 'package:allgo_app/model/response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class MyAlgorithm extends StatefulWidget {
  _MyAlgorithm createState() => _MyAlgorithm();
}

class _MyAlgorithm extends State<MyAlgorithm> {
  bool isSwitched = false;
  late Future<ResponseBase> futureResponse;
  late AppAlgorithm algoInfo;

  @override
  void initState() {
    super.initState();
    _init();
    futureResponse = fetchResponse();
  }

  _init() async {}

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
  //     width: double.infinity,
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       children: <Widget>[
  //         Container(
  //           child: Row(
  //             children: <Widget>[
  //               Text(
  //                 '홍수몬',
  //                 style: TextStyle(fontSize: 15),
  //               ),
  //               Text(
  //                 ' 님의',
  //                 textAlign: TextAlign.left,
  //               ),
  //               Text(
  //                 '알고리즘',
  //                 style: TextStyle(
  //                     fontSize: 15,
  //                     fontWeight: FontWeight.w500,
  //                     letterSpacing: 2.0,
  //                     color: Colors.blueAccent),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Container(
  //           margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
  //           padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
  //           decoration: BoxDecoration(
  //             border: Border.all(color: Colors.blueGrey, width: 1.5),
  //             borderRadius: BorderRadius.all(Radius.circular(10.0)),
  //           ),
  //           child: Column(
  //             children: <Widget>[
  //               Container(
  //                 padding: EdgeInsets.only(right: 10),
  //                 child: Row(
  //                   children: <Widget>[
  //                     ButtonTheme(
  //                       child: ElevatedButton(
  //                         onPressed: () {
  //                           print('algorithm');
  //                           ScaffoldMessenger.of(context).showSnackBar(
  //                             SnackBar(content: Text('알고리즘ㄱㄲㄲㄲㄱ')),
  //                           );
  //                         },
  //                         child: Text(
  //                           "단기투자 전략",
  //                           style: TextStyle(),
  //                         ),
  //                         style: ElevatedButton.styleFrom(
  //                           shape: RoundedRectangleBorder(
  //                               side: BorderSide(
  //                                   color: Colors.blue,
  //                                   width: 1,
  //                                   style: BorderStyle.solid),
  //                               borderRadius: BorderRadius.circular(50)),
  //                         ),
  //                       ),
  //                     ),
  //                     SizedBox(
  //                       width: 10,
  //                     ),
  //                     ButtonTheme(
  //                       minWidth: 10.0,
  //                       height: 10.0,
  //                       child: TextButton(
  //                         onPressed: () {
  //                           print('algorithm');
  //                           // flutterToast('삭제 이벤트 발싱');
  //                         },
  //                         child: Icon(
  //                           Icons.close_rounded,
  //                           size: 15,
  //                           color: Colors.black,
  //                         ),
  //                       ),
  //                     ),
  //                     Switch(
  //                         value: isSwitched,
  //                         onChanged: (value) {
  //                           setState(() {
  //                             isSwitched = value;
  //                             print(isSwitched);
  //                           });
  //                         },
  //                         activeTrackColor: Colors.blueGrey,
  //                         activeColor: Colors.redAccent),
  //                   ],
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  //
  //
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  '홍수몬',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  ' 님의',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '알고리즘',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: <Widget>[
                FutureBuilder<ResponseBase>(
                  future: futureResponse,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasData) {
                      algoInfo = AppAlgorithm.fromJson(snapshot.data!.data);
                      return Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Row(
                          children: <Widget>[
                            ButtonTheme(
                              child: ElevatedButton(
                                onPressed: () {
                                  print('algorithm');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('${algoInfo.explain}')),
                                  );
                                },
                                child: Text(
                                  "${algoInfo.code_name}",
                                  style: TextStyle(),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: Colors.blue,
                                          width: 1,
                                          style: BorderStyle.solid),
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            ButtonTheme(
                              minWidth: 10.0,
                              height: 10.0,
                              child: TextButton(
                                onPressed: () {
                                  print('algorithm');
                                  // flutterToast('삭제 이벤트 발싱');
                                },
                                child: Icon(
                                  Icons.close_rounded,
                                  size: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeTrackColor: Colors.blueGrey,
                                activeColor: Colors.redAccent),
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
          ),
        ],
      ),
    );
  }

  Future<ResponseBase> fetchResponse() async {
    final response =
        await http.get(Uri.http(getApiUrl(), 'api/main/algorithm/g/A0001'));
    if (response.statusCode == 200) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('알고리즘 불러오기 실패');
    }
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("text"),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "hello",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ));
        },
      ),
    );
  }
}
