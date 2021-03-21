import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
            title: Text('ALLGO'),
            centerTitle: false,
            backgroundColor: Colors.deepOrange,
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.mail),
                  onPressed: () {
                    print('hambuger');
                  }),
            ]),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/test_img.png'),
              backgroundColor: Colors.amberAccent,
              radius: 100.0,
            ),
            Divider(
              height: 30.0,
              color: Colors.grey[850],
              thickness: 10,
            ),
            Text(
              'test',
              style: TextStyle(
                  fontSize: 15, color: Colors.black54, letterSpacing: 2.0),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'test2',
              style: TextStyle(fontSize: 15, color: Colors.black54),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: <Widget>[
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 10, 10)),
                Icon(Icons.flag),
                SizedBox(
                  width: 35,
                ),
                Text(
                  'using test',
                  style: TextStyle(
                      fontSize: 16.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/test_img.png'),
                radius: 20.0,
                backgroundColor: Colors.amber[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}
