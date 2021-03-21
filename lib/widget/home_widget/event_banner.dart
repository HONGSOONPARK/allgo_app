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
        margin: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey[100], width: 3.5),
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
              child: Text("event banner"),
            ),
          ],
        ));
  }
}
