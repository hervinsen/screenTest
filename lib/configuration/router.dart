import 'package:flutter/material.dart';
import 'package:screenTest/screen/counter_screen.dart';
import 'package:screenTest/screen/landing_screen.dart';
import 'package:screenTest/screen/test_screen.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LandingScreen.route:
        return MaterialPageRoute(builder: (_) => const LandingScreen());
      case TestScreen.route:
        return MaterialPageRoute(builder: (_) => const TestScreen());
      case CounterScreen.route:
        return MaterialPageRoute(
            builder: (_) => const CounterScreen(
                  title: CounterScreen.route,
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
