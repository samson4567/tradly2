

import 'package:flutter/material.dart';
import 'package:tradly2/utilis/App_widget/app_color.dart';


class SmartPayThemeData {
  static ThemeData appThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: customKPrimaryColor,
      primaryColor: kPRYCOLOUR,
      fontFamily: 'SF Pro Display',
    );
  }
}
