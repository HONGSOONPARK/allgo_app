import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingOveray extends StatelessWidget {
  final Widget? child;
  final bool? isLoading;

  const LoadingOveray({Key? key, this.isLoading, this.child})
      : assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading!) {
      return Center(child: CircularProgressIndicator());
    }
    return child!;
  }
}
