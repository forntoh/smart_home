import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

Widget wrapInCard(BuildContext context,
    {Widget widget, double padding = defaultPadding, Color backgroundColor}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    padding: EdgeInsets.all(padding),
    child: widget,
    decoration: BoxDecoration(
      color: backgroundColor == null
          ? Colors.black.withOpacity(0.08)
          : backgroundColor,
      borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
    ),
  );
}
