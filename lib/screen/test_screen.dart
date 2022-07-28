import 'package:flutter/material.dart';
import 'package:screenTest/configuration/app_colors.dart';
import 'package:screenTest/widget/app_decoration.dart';
import 'package:screenTest/widget/app_text.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key key}) : super(key: key);
  static const route = 'Test Screen';

  static Future<dynamic> to(BuildContext context) {
    return Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        iconTheme: const IconThemeData(color: AppColors.textColor),
        title: AppText.withFontSize(
          route,
          20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.all(12),
              decoration: AppDecoration.standard(bgColor: AppColors.bgMuda),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: AppText.withFontSize(
                      TestData.title,
                      20,
                      height: 1.35,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildBox(children: [
                        AppText.withFontSize(
                          TestData.text1018,
                          10,
                          height: 1.8,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          10,
                          height: 1.8,
                          fontWeight: FontWeight.w600,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.text1218,
                          12,
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          12,
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ]),
                      const SizedBox(width: 16),
                      buildBox(children: [
                        AppText.withFontSize(
                          TestData.text1420,
                          14,
                          height: 1.42,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          14,
                          height: 1.42,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          14,
                          height: 1.42,
                          fontWeight: FontWeight.w700,
                        ),
                      ]),
                      const SizedBox(width: 16),
                      buildBox(bgColor: AppColors.lightYellow, children: [
                        AppText.withFontSize(
                          TestData.text1624,
                          16,
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          16,
                          height: 1.5,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          16,
                          height: 1.5,
                          fontWeight: FontWeight.w700,
                        ),
                      ]),
                      const SizedBox(width: 16),
                      buildBox(bgColor: AppColors.lightGreen, children: [
                        AppText.withFontSize(
                          TestData.text1828,
                          18,
                          height: 1.55,
                          fontWeight: FontWeight.w700,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          18,
                          height: 1.55,
                          fontWeight: FontWeight.w400,
                        ),
                        const SizedBox(height: 16),
                        AppText.withFontSize(
                          TestData.desc,
                          18,
                          height: 1.55,
                          fontWeight: FontWeight.w700,
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            buildLongBox(AppColors.teal, 800),
            const SizedBox(height: 16),
            buildLongBox(AppColors.brightCoral, 900),
            const SizedBox(height: 16),
            buildLongBox(AppColors.yellowCoral, 1000),
            const SizedBox(height: 16),
            buildLongBox(AppColors.teal, 1180),
            const SizedBox(height: 16),
            buildLongBox(AppColors.brightCoral, 1280),
            const SizedBox(height: 16),
            buildLongBox(AppColors.yellowCoral, 1200),
            const SizedBox(height: 16),
            buildLongBox(Colors.lightGreenAccent, MediaQuery.of(context).size.width,
                additionalText: ' (Ini full width)'),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget buildLongBox(Color color, double width, {String additionalText = ''}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8),
      width: width,
      color: color,
      child: AppText.withFontSize(
        width.toString() + additionalText,
        20,
        height: 1.35,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildBox({List<Widget> children, Color bgColor = Colors.white}) {
    return Expanded(
      child: Container(
        decoration: AppDecoration.standard(bgColor: bgColor),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}

class TestData {
  static const String title = 'Font Size on Figma';
  static const String text1018 = 'Font Size on Figma Over - 10 /18 ';
  static const String text1218 = 'Font Size on Figma Over - 12 /18 ';
  static const String text1420 = 'Font Size on Figma H8 - 14 /20 ';
  static const String text1624 = 'Font Size on Figma H7 - 16/24';
  static const String text1828 = 'Font Size on Figma H6 18/28';
  static const String desc =
      '"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
}
