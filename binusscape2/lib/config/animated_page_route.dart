import 'package:flutter/material.dart';

class AnimatedPageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;

  AnimatedPageRoute({required this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin:
                    const Offset(1.0, 0.0), // Animation starts from the right
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
}
