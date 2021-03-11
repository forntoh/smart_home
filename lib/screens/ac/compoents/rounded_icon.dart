import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    @required this.icon,
    this.isSelected = false,
    this.onTap,
    this.tempColor,
  }) : super(key: key);

  final IconData icon;
  final isSelected;
  final Function onTap;
  final Color tempColor;

  @override
  Widget build(BuildContext context) {
    var bgColor = isSelected ? Colors.white : tempColor.withOpacity(0.4);
    return InkWell(
        onTap: onTap,
        child: wrapInCard(
          context,
          widget: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.white,
          ),
          padding: defaultPadding + 4,
          backgroundColor: bgColor,
        ));
  }
}
