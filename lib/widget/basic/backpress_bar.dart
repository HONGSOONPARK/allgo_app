import 'dart:developer';

import 'package:flutter/material.dart';

class BackPressBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: AppBar(
      title: Text('알림'),
      centerTitle: false,
      elevation: 0.0,
      leading: IconButton(
          icon: Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
            log('onPressed  BackPress Button');
          }),
    ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
