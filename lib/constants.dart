import 'package:flutter/cupertino.dart';

const double defaultPadding = 20.0;
Color primaryColor = Color(0xFF4B29AC);
Color accentColor = Color(0xFFF85C47);

Color bgGradientBotomStart = Color(0xFF00C4B6);
Color bgGradientBotomStartQ = Color(0xFF0697E1);
Color bgGradientBottomMiddle = Color(0xFF7E5EF9);
Color bgGradientBotomEndQ = Color(0xFFF6239C);
Color bgGradientBotomEnd = Color(0xFFF85D48);


Color getColor(double progress) {
  var first = mapToRange(progress, 0, 1, 0, 0.25);
  var second = mapToRange(progress, 0, 1, 0.25, 0.5);
  var third = mapToRange(progress, 0, 1, 0.5, 0.75);
  var forth = mapToRange(progress, 0, 1, 0.75, 1);

  if (progress >= 0 && progress <= 0.25)
    return Color.lerp(bgGradientBotomStart, bgGradientBotomStartQ, first);
  else if (progress > 0.25 && progress <= 0.5)
    return Color.lerp(bgGradientBotomStartQ, bgGradientBottomMiddle, second);
  else if (progress > 0.5 && progress <= 0.75)
    return Color.lerp(bgGradientBottomMiddle, bgGradientBotomEndQ, third);
  else if (progress > 0.75 && progress <= 1)
    return Color.lerp(bgGradientBotomEndQ, bgGradientBotomEnd, forth);
  else
    return bgGradientBottomMiddle;
}

double mapToRange(
    double value, double start, double end, double oldStart, double oldEnd) {
  var oldRange = (oldEnd - oldStart);
  var newRange = (end - start);
  return (((value - oldStart) * newRange) / oldRange) + start;
}
