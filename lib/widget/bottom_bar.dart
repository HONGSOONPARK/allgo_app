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
            indicatorColor: Colors.transparent,
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.home,
                  size: 18,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.upgrade,
                  size: 18,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  size: 18,
                ),
              ),
            ]),
      ),
    );
  }
}
