import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Container(
        height: 50,
        child: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.assessment,
                  size: 30,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.account_box,
                  size: 30,
                ),
              ),
            ]),
      ),
    );
  }
}
