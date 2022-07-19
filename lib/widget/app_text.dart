import 'package:flutter/material.dart';
import 'package:screenTest/configuration/app_colors.dart';

class AppText extends Text {
  AppText.withFontSize(String data, double fontSize,
      {this.color = AppColors.textColor,
      this.fontWeight,
      TextAlign textAlign,
      TextOverflow overflow,
      this.letterSpacing,
      this.height,
      int maxLines})
      : super(data,
            maxLines: maxLines,
            textAlign: textAlign,
            style: TextStyle(
                fontFamily: fontFamily,
                fontSize: fontSize,
                color: color,
                fontWeight: fontWeight,
                letterSpacing: letterSpacing,
                height: height),
            overflow: overflow);

  static const fontFamily = 'NunitoSans';
  final Color color;
  final FontWeight fontWeight;
  final double letterSpacing;
  final double height;
}
