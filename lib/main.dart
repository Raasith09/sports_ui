import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sports_ui/screens/all_sports/all_sports.dart';
import 'package:sports_ui/screens/home/home_page.dart';
import 'package:sports_ui/screens/sign_in/sign_in.dart';
import 'package:sports_ui/screens/splash/splash_screen.dart';
import 'package:sports_ui/utils/themedata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkThemeData,
      routerConfig: router,
    );
  }
}

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
    ),
    GoRoute(
      path: '/signIn',
      builder: (BuildContext context, GoRouterState state) {
        return const SignIn();
      },
    ),
    GoRoute(
      path: '/allsports',
      builder: (BuildContext context, GoRouterState state) {
        return const AllSports();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
  ],
);
