import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

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
