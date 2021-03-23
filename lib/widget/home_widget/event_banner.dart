import 'package:flutter/material.dart';

class EventBanner extends StatefulWidget {
  _EventBanner createState() => _EventBanner();
}

class _EventBanner extends State<EventBanner> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        width: double.infinity,
        height: 100,
        color: Colors.redAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '이벤트 배너, 이미지',
              textAlign: TextAlign.center,
            ),
            SizedBox(
                // width: double.infinity,
                // height: 10,
                ),
            Container(
                // width: double.infinity,
                // margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                // padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                // decoration: BoxDecoration(
                //   border: Border.all(color: Colors.blueGrey[100], width: 0.5),
                //   borderRadius: BorderRadius.all(Radius.circular(5.0)),
                // ),
                // child: Text("event banner"),
                ),
          ],
        ));
  }
}
