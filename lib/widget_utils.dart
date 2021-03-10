import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

Widget wrapInCard(BuildContext context, {Widget widget}) {
  return Container(
    padding: EdgeInsets.all(16),
    child: widget,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withOpacity(0.2),
      borderRadius: BorderRadius.all(Radius.circular(defaultPadding)),
    ),
  );
}
