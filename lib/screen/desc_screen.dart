import 'package:allgo_app/widget/basic/backpress_bar.dart';
import 'package:flutter/material.dart';

class DescScreen extends StatefulWidget {
  _DescScreenState createState() => _DescScreenState();
}

class _DescScreenState extends State<DescScreen> {
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
        children: <Widget>[Text('설명하는 페이지')],
      )),
    );
  }
}
