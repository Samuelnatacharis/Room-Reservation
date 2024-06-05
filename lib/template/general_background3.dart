import 'package:flutter/material.dart';

class GeneralBackground3 extends StatelessWidget {
  final Widget child; // Child widget to be placed over the background

  GeneralBackground3({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.lightGreen.shade600, Colors.lightBlue.shade800],
        ),
      ),
      child: child,
    );
  }
}
