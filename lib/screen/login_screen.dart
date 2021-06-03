import 'dart:convert';

import 'package:allgo_app/common/util.dart';
import 'package:allgo_app/model/response.dart';
import 'package:allgo_app/screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kakao_flutter_sdk/auth.dart';
import 'package:kakao_flutter_sdk/common.dart';

import 'package:http/http.dart' as http;

// 플랫폼	앱 키	재발급
// 네이티브 앱 키	27ccd9bac2fb0003b87894181c138f26 복사	재발급
// REST API 키	0cdc5405e9a41dc9b32c5590b888dacc 복사	재발급
// JavaScript 키	3fc56c8fd83c803b2db20ef493cfe970 복사	재발급
// Admin 키	8157e4863b3ca23f0de98f53bff971f8
// http://localhost:3000/api/kakao/login

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController idField = TextEditingController();
  TextEditingController pwdField = TextEditingController();

  bool _isKakaoTalkInstalled = false;
  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _initKakaoTalkInstalled();
  }

  _initKakaoTalkInstalled() async {
    final installed = await isKakaoTalkInstalled();
    print('kakao Install : ' + installed.toString());

    setState(() {
      _isKakaoTalkInstalled = installed;
    });
  }

  _loginWithKakao() async {
    try {
      var code = await AuthCodeClient.instance.request();

      print("_loginWithKakao crosode " + code);
      await _issueAccessToken(code);
    } catch (e) {
      print(e);
    }
  }

  _issueAccessToken(String authCode) async {
    try {
      var token = await AuthApi.instance.issueAccessToken(authCode);
      AccessTokenStore.instance.toStore(token);
      print(token);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } catch (e) {
      print("error on issuing access token: $e");
    }
  }

  Future<ResponseBase> signInWithKaKao() async {
    // final clientState = Uuid().v4();
    // final url = Uri.https('kauth.kakao.com', '/oauth/authorize', {
    //   'response_type': 'code',
    //   'client_id': "0cdc5405e9a41dc9b32c5590b888dacc",
    //   'response_mode': 'form_post',
    //   'redirect_uri': 'http://192.168.219.101:3333/oauth/kakao/token',
    //   'scope': 'account_email profile',
    //   // 'state': clientState,
    // });

    final param = {
      'response_type': 'code',
      'client_id': "0cdc5405e9a41dc9b32c5590b888dacc",
      'response_mode': 'form_post',
      'redirect_uri': 'http://192.168.219.101:3000/oauth/kakao/sign_in',
      'scope': 'account_email profile'
    };

    final response =
        await http.get(Uri.https("kauth.kakao.com", '/oauth/authorize', param));
    if (response.statusCode == 200) {
      return ResponseBase.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('공지사항 불러오기 실패');
    }

    // final result = await FlutterWebAut3000h.authenticate(
    //     url: url.toString(),
    //     callbackUrlScheme: "webauthcallback"); //"applink"//"signinwithapple"
    // final body = Uri.parse(result).queryParameters;
    // print(body["code"]);

    // final tokenUrl = Uri.https('kauth.kakao.com', '/oauth/token', {
    //   'grant_type': 'authorization_code',
    //   'client_id': "<카카오 관리 콘솔에서 제공하는 REST_API 키 입력>",
    //   'redirect_uri': '<카카오에 등록한 authrization_code 받을 return uri 입력>',
    //   'code': body["code"],
    // });
    // var responseTokens = await http.post(tokenUrl.toString());
    // Map<String, dynamic> bodys = json.decode(responseTokens.body);
    // var response = await http.post(
    //     "https://sage-dorian-anise.glitch.me/callbacks/kakao/token",
    //     body: {"accessToken": bodys['access_token']});
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    KakaoContext.clientId = "27ccd9bac2fb0003b87894181c138f26";
    KakaoContext.javascriptClientId = "3fc56c8fd83c803b2db20ef493cfe970";

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '로그인',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.all(4),
                        width: double.infinity,
                        child: ButtonTheme(
                          child: ElevatedButton(
                            onPressed: () {
                              print('카카오톡 로그인 버튼');
                              _isKakaoTalkInstalled
                                  ? _loginWithKakao()
                                  : _loginWithKakao();

                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   SnackBar(content: Text('카카오톡 로그인')),
                              // );
                            },
                            child: Image.asset(
                              'images/kakao_login_button.png',
                              fit: BoxFit.fill,
                              height: 50,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4),
                        width: double.infinity,
                        child: ButtonTheme(
                          child: ElevatedButton(
                            onPressed: () {
                              print('구글 로그인');
                              signInWithGoogle();
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('구글 로그인')),
                              );
                            },
                            child: Text("구글 로그인"),
                            style: ElevatedButton.styleFrom(),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(4),
                        width: double.infinity,
                        child: ButtonTheme(
                          child: ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('애플 로그인')),
                              );
                            },
                            child: Text("애플 로그인"),
                            style: ElevatedButton.styleFrom(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   child: Form(
                //     child: Theme(
                //       data: ThemeData(
                //           primaryColor: Colors.teal,
                //           inputDecorationTheme: InputDecorationTheme(
                //               labelStyle: TextStyle(
                //                   color: Colors.teal, fontSize: 15.0))),
                //       child: Container(
                //         padding: EdgeInsets.all(25.0),
                //         child: Column(
                //           children: <Widget>[
                //             TextField(
                //               decoration: InputDecoration(labelText: '아이디 입력'),
                //               keyboardType: TextInputType.text,
                //               controller: idField..text = 'guest',
                //             ),
                //             TextField(
                //               decoration: InputDecoration(labelText: '비밀번호 입력'),
                //               keyboardType: TextInputType.text,
                //               obscureText: true,
                //               controller: pwdField..text = '1234',
                //             )
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                // Container(
                //   margin: const EdgeInsets.all(4),
                //   width: double.infinity,
                //   child: ButtonTheme(
                //     minWidth: 100.0,
                //     height: 50.0,
                //     child: ElevatedButton(
                //       onPressed: () {
                //         // Navigator.push(
                //         //     context,
                //         //     MaterialPageRoute(
                //         //         builder: (context) => LoginScreen()));

                //         if (idField.text == 'guest' &&
                //             pwdField.text == '1234') {
                //           Navigator.push(
                //               context,
                //               MaterialPageRoute(
                //                   builder: (BuildContext context) =>
                //                       UserScreen()));
                //           print('로그인 페이지 이동');
                //           ScaffoldMessenger.of(context)
                //               .showSnackBar(SnackBar(content: Text('로그인 성공')));
                //         } else {
                //           ScaffoldMessenger.of(context)
                //               .showSnackBar(SnackBar(content: Text('로그인 실패')));
                //         }
                //       },
                //       child: Text("로그인"),
                //       style: ElevatedButton.styleFrom(),
                //     ),
                //   ),
                // ),
                // Container(
                //     margin: const EdgeInsets.all(4),
                //     width: double.infinity,
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: <Widget>[
                //         ButtonTheme(
                //           child: TextButton(
                //             onPressed: () {},
                //             child: Text("이메일로 가입하기"),
                //             style: ElevatedButton.styleFrom(),
                //           ),
                //         ),
                //         ButtonTheme(
                //           child: TextButton(
                //             onPressed: () {},
                //             child: Text("비밀번호 재설정"),
                //             style: ElevatedButton.styleFrom(),
                //           ),
                //         ),
                //       ],
                //     )),
              ],
            ),
          ),
        );
      }),
    );
  }
}
