import 'package:flutter/material.dart';

class AppDeviceUtils {
  AppDeviceUtils._();

  static double getAppBarHeight() => kToolbarHeight;
  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
  static double getBottomNavigationBarHeight() => kBottomNavigationBarHeight;
}