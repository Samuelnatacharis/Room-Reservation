import 'package:flutter/material.dart';

class GeneralBackground extends StatelessWidget {
  final Widget child; // Child widget to be placed over the background

  GeneralBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.purple],
        ),
      ),
      child: child,
    );
  }
}
