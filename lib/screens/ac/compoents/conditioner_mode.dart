import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'rounded_icon.dart';

class ConditionerMode extends StatelessWidget {
  final Function onTap;
  final Color tempColor;
  final int selectedItem;

  const ConditionerMode({
    Key key,
    @required this.onTap,
    @required this.tempColor,
    @required this.selectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          'assets/icons/001-clock.svg',
          'assets/icons/003-snowflake.svg',
          'assets/icons/004-sun.svg',
          'assets/icons/002-drop.svg',
        ]
            .asMap()
            .entries
            .map((item) => RoundedIconButton(
                  icon: item.value,
                  isSelected: selectedItem == item.key,
                  onTap: () {
                    onTap(item.key);
                  },
                  tempColor: tempColor,
                ))
            .toList(),
      ),
    );
  }
}
