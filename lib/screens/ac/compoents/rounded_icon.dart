import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  final String icon;
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
          widget: SvgPicture.asset(
            icon,
            width: 24,
            height: 24,
            color: isSelected ? Colors.black : Colors.white,
          ),
          padding: defaultPadding + 4,
          backgroundColor: bgColor,
        ));
  }
}
