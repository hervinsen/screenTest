import 'package:flutter/material.dart';
import 'package:screenTest/configuration/router.dart';
import 'package:screenTest/configuration/theme.dart';
import 'package:screenTest/screen/landing_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.standard,
      initialRoute: LandingScreen.route,
      onGenerateRoute: Router.generateRoute,
    );
  }
}
