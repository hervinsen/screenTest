import 'package:flutter/material.dart';

class AppDecoration {
  static BoxDecoration standard(
      {Color bgColor = Colors.white, Color borderColor = Colors.transparent}) {
    return BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: borderColor));
  }
}
