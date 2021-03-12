import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

Widget wrapInCard({
  Widget widget,
  double padding = defaultPadding,
  Color backgroundColor,
}) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    padding: EdgeInsets.all(padding),
    child: widget,
    decoration: BoxDecoration(
      color: backgroundColor,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.12),
          blurRadius: 0,
          spreadRadius: -0.5,
        )
      ],
      borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
    ),
  );
}
