import 'package:flutter/material.dart';

class ThreeMonth extends StatefulWidget {
  _ThreeMonthState createState() => _ThreeMonthState();
}

class _ThreeMonthState extends State<ThreeMonth> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey[100], width: 3.5),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '태파고는 최근 3개월간',
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
            Text('500만원',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.black)),
            Text('수익을 달성했습니다',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.black)),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.info_outline,
                    size: 18.5,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '투자금액 1000만원 기준',
                  )
                ],
              ),
            )
          ],
        ));
  }
}
