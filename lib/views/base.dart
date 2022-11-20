// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fooddelevery/core/core.dart';

class Base extends StatelessWidget {
  final Color? bgcolor;
  final Widget child;
  const Base({
    Key? key,
    this.bgcolor,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: h(context),
        width: w(context),
        color: bgcolor ?? bgPrimary(context),
        child: child,
      ),
    );
  }
}
