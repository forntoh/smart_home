import 'package:flutter/cupertino.dart';

double defaultPadding = 20.0;
Color primaryColor = Color(0xFF4B29AC);
Color accentColor = Color(0xFFFF5A59);

Color bgGradientTop = Color(0xFFEDE7FF);
Color bgGradientMiddle = Color(0xFFD4C5FF);
Color bgGradientBottom = Color(0xFF8B66FF);

BoxDecoration gradientDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [bgGradientTop, bgGradientMiddle, bgGradientBottom],
  ),
);
