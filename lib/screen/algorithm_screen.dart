import 'package:allgo_app/widget/algorithm_widget/algorithm_list.dart';
import 'package:flutter/material.dart';

class AlgorithmScreen extends StatefulWidget {
  _AlgorithmScreenState createState() => _AlgorithmScreenState();
}

class _AlgorithmScreenState extends State<AlgorithmScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AlgorithmList(),
          ],
        ))
      ],
    );
  }
}
