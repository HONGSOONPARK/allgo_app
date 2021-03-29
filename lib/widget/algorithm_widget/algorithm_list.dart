import 'package:flutter/material.dart';

class AlgorithmList extends StatefulWidget {
  _AlgorithmListState createState() => _AlgorithmListState();
}

class _AlgorithmListState extends State<AlgorithmList> {
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
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Text("단기 투자 전략"),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Text("존버 투자 전략 얍얍"),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: const EdgeInsets.fromLTRB(0, 7, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blueGrey, width: 1.5),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Text("매집 투자 전략 얍얍"),
          ),
        ],
      ),
    );
  }
}
