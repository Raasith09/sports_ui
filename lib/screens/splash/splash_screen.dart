import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sports_ui/utils/my_images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _controller.forward();
    goToHome();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
          child: Image.asset(
            MyAssets.splashImage,
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }

  void goToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      context.pushReplacement('/signIn');
    });
  }
}
