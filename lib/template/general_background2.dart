import 'package:flutter/material.dart';

class GeneralBackground2 extends StatelessWidget {
  final Widget child; // Child widget to be placed over the background

  GeneralBackground2({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.orange, Colors.black87],
        ),
      ),
      child: child,
    );
  }
}
