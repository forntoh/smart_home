import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

Widget wrapInCard(
  BuildContext context, {
  Widget widget,
  double padding = defaultPadding,
}) {
  return Container(
    padding: EdgeInsets.all(padding),
    child: widget,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
    ),
  );
}
