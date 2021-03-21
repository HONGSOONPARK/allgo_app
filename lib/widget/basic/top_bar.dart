import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: AppBar(
          title: Text('ALLGO'),
          centerTitle: false,
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.mail),
                onPressed: () {
                  print('hambuger');
                }),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
