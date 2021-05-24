import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff082640),
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
                  size: 20,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.assessment,
                  size: 20,
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
