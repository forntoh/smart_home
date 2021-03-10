import 'package:flutter/material.dart';

class CustomWidgets {
  static SliderThemeData sliderTheme = SliderThemeData(
    activeTrackColor: Colors.white,
    thumbColor: Colors.white,
    inactiveTrackColor: Colors.white24,
    trackHeight: 3,
    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
    trackShape: RoundedRectSliderTrackShape(),
  );
}
