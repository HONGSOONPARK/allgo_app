import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('로그인'),
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
                        print('네이버 로그인');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('네이버 로그인')),
                        );
                      },
                      child: Text("네이버 로그인"),
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
                        print('카카오톡 로그인');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('카카오톡 로그인')),
                        );
                      },
                      child: Text("카카오톡 로그인"),
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
                        print('애플 로그인');
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
          Container(
            margin: EdgeInsets.all(10),
            child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: '이메일',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: '비밀번호',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ],
                )),
          ),
          Container(
            margin: const EdgeInsets.all(4),
            width: double.infinity,
            child: ButtonTheme(
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => LoginScreen()));

                  print('로그인 페이지 이동');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('로그인 페이지 이동할거야')),
                  );
                },
                child: Text("로그인"),
                style: ElevatedButton.styleFrom(),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.all(4),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("이메일로 가입하기"),
                      style: ElevatedButton.styleFrom(),
                    ),
                  ),
                  ButtonTheme(
                    child: TextButton(
                      onPressed: () {},
                      child: Text("비밀번호 재설정"),
                      style: ElevatedButton.styleFrom(),
                    ),
                  ),
                ],
              )),
        ],
      )),
    );
  }
}
