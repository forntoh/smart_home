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
          Icons.lock_clock,
          Icons.ac_unit,
          Icons.wb_sunny_outlined,
          Icons.wb_cloudy_outlined,
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