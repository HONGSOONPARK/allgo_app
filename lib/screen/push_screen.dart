import 'package:allgo_app/widget/basic/backpress_bar.dart';
import 'package:flutter/material.dart';

class PushScreen extends StatefulWidget {
  _PushScreenState createState() => _PushScreenState();
}

class _PushScreenState extends State<PushScreen> {
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
        children: <Widget>[Text('text')],
      )),
    );
  }
}
