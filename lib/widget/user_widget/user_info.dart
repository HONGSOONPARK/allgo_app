import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text("유저 정보를 뿌려주는 페이지, \n 로그인 정보 없을 경우 로그인 화면 표시"),
          ),
        ],
      ),
    );
  }
}
