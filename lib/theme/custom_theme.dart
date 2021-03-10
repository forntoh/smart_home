import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';
import 'package:smart_home/theme/widgets.dart';

class CustomTheme {
  static ThemeData get myTheme {
    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      sliderTheme: CustomWidgets.sliderTheme,
    );
  }
}
