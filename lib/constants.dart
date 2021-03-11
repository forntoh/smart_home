import 'package:flutter/cupertino.dart';

const double defaultPadding = 20.0;
Color primaryColor = Color(0xFF4B29AC);
Color accentColor = Color(0xFFF85C47);

Color bgGradientBotomStart = Color(0xFF07CCD5);
Color bgGradientBottom = Color(0xFF8B66FF);
Color bgGradientBotomEnd = Color(0xFFF85C47);

Color getColor(double progress) {
  var beginRange = mapToRange(progress, 0, 1, 0, 0.5);
  var endRange = mapToRange(progress, 0, 1, 0.5, 1);

  if (progress >= 0 && progress <= 0.5)
    return Color.lerp(bgGradientBotomStart, bgGradientBottom, beginRange);
  else if (progress > 0.5 && progress <= 1)
    return Color.lerp(bgGradientBottom, bgGradientBotomEnd, endRange);
  else
    return bgGradientBottom;
}

double mapToRange(
    double value, double start, double end, double oldStart, double oldEnd) {
  var oldRange = (oldEnd - oldStart);
  var newRange = (end - start);
  return (((value - oldStart) * newRange) / oldRange) + start;
}
