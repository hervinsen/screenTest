import 'package:flutter/material.dart';
import 'package:screenTest/model/menu_model.dart';
import 'package:screenTest/screen/counter_screen.dart';
import 'package:screenTest/screen/height_test_screen.dart';
import 'package:screenTest/screen/test_screen.dart';
import 'package:screenTest/widget/app_decoration.dart';
import 'package:screenTest/widget/app_text.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key key}) : super(key: key);

  static const route = 'landing';

  @override
  Widget build(BuildContext context) {
    final menus = [
      MenuModel(
          pageRouteName: CounterScreen.route,
          onTap: () => CounterScreen.to(context)),
      MenuModel(
          pageRouteName: TestScreen.route, onTap: () => TestScreen.to(context)),
      MenuModel(
          pageRouteName: HeightTestScreen.route,
          onTap: () => HeightTestScreen.to(context)),
    ];

    return Scaffold(
      appBar: AppBar(
        title: AppText.withFontSize('Landing Screen', 20),
      ),
      body: ListView(
        children: menus
            .map<Widget>((menu) => Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: AppDecoration.standard(),
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: menu.onTap,
                    child: AppText.withFontSize(menu.pageRouteName, 16),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
