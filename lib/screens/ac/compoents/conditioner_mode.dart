import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class ConditionerMode extends StatefulWidget {
  const ConditionerMode({
    Key key,
  }) : super(key: key);

  @override
  _ConditionerModeState createState() => _ConditionerModeState();
}

class _ConditionerModeState extends State<ConditionerMode> {
  int _selectedItem = 0;

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
                  isSelected: _selectedItem == item.key,
                  onTap: () {
                    setState(() {
                      _selectedItem = item.key;
                    });
                  },
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
  }) : super(key: key);

  final IconData icon;
  final isSelected;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: wrapInCard(context,
          widget: Icon(
            icon,
            color: isSelected ? Colors.black : Colors.white,
          ),
          padding: defaultPadding + 4,
          backgroundColor: isSelected
              ? Colors.white
              : Theme.of(context).primaryColor.withOpacity(0.2)),
    );
  }
}
