import 'package:flutter/material.dart';

class BottomFixedWidget extends StatelessWidget {
  const BottomFixedWidget({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  Widget build(BuildContext context) => Container(
      color: Colors.transparent,
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
      child: child,
    );
}