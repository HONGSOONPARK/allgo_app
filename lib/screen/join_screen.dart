import 'package:allgo_app/widget/basic/backpress_bar.dart';
import 'package:flutter/material.dart';

class JoinScreen extends StatefulWidget {
  _JoinScreenState createState() => _JoinScreenState();
}

class _JoinScreenState extends State<JoinScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackPressBar(),
      body: Center(
          child: Column(
        children: <Widget>[Text('회원가입 페이지')],
      )),
    );
  }
}
