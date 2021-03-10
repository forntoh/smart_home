import 'package:flutter/material.dart';

import '../../../widget_utils.dart';
import 'number_button.dart';

class SpeedControl extends StatefulWidget {
  const SpeedControl({
    Key key,
  }) : super(key: key);

  @override
  _SpeedControlState createState() => _SpeedControlState();
}

class _SpeedControlState extends State<SpeedControl> {
  int selectedSpeed = 1;

  void onSpeedChange(i) {
    setState(() {
      selectedSpeed = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: wrapInCard(
        context,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Speed',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumberButton(
                  number: 1,
                  isSelected: selectedSpeed == 1,
                  onTap: onSpeedChange,
                ),
                NumberButton(
                  number: 2,
                  isSelected: selectedSpeed == 2,
                  onTap: onSpeedChange,
                ),
                NumberButton(
                  number: 3,
                  isSelected: selectedSpeed == 3,
                  onTap: onSpeedChange,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
