import 'dart:developer';

import 'package:allgo_app/screen/desc_screen.dart';
import 'package:flutter/material.dart';

class ServiceInfo extends StatefulWidget {
  _ServiceInfo createState() => _ServiceInfo();
}

class _ServiceInfo extends State<ServiceInfo> {
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
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DescScreen()));
                log('onPressed  Push Message Button');
              },
              child: Text(
                "ALLGO, 어떤 서비스인가요? -> 자세히 보기",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
