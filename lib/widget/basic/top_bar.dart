import 'dart:developer';

import 'package:allgo_app/screen/push_screen.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: Text('ALLGO'),
        centerTitle: false,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.mail),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PushScreen()));
                log('onPressed  Push Message Button');
                //flutterToast('푸시화면으로 갈거임');
              }),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
