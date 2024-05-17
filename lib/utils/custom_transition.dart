import 'package:flutter/material.dart';

class CustomPage<T> extends Page<T> {
  final Widget child;

  const CustomPage({required this.child}) : super();

  @override
  Route<T> createRoute(BuildContext context) {
    return PageRouteBuilder<T>(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
