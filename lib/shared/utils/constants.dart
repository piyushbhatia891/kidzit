import 'package:flutter/material.dart';

class Constants {
  static final int week = 4;

  static double getWidthOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getHeightOfScreen(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}
