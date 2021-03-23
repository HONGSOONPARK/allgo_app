import 'package:flutter/material.dart';
import '../../main.dart';

class MyAlgorithm extends StatefulWidget {
  _MyAlgorithm createState() => _MyAlgorithm();
}

class _MyAlgorithm extends State<MyAlgorithm> {
  bool isSwitched = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 15),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  '홍수몬',
                  style: TextStyle(fontSize: 15),
                ),
                Text(
                  ' 님의',
                  textAlign: TextAlign.left,
                ),
                Text(
                  '알고리즘',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      color: Colors.blueAccent),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey[100], width: 3.5),
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Row(
                    children: <Widget>[
                      ButtonTheme(
                        child: ElevatedButton(
                          onPressed: () {
                            print('algorithm');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('알고리즘ㄱㄲㄲㄲㄱ')),
                            );
                          },
                          child: Text("단기투자 전략"),
                          style: ElevatedButton.styleFrom(),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ButtonTheme(
                        minWidth: 10.0,
                        height: 10.0,
                        child: TextButton(
                          onPressed: () {
                            print('algorithm');
                            flutterToast('삭제 이벤트 발싱');
                          },
                          child: Icon(
                            Icons.close_rounded,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print(isSwitched);
                            });
                          },
                          activeTrackColor: Colors.blueGrey,
                          activeColor: Colors.redAccent),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("text"),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "hello",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            duration: Duration(milliseconds: 1000),
          ));
        },
      ),
    );
  }
}
