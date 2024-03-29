import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

import '../../../widget_utils.dart';
import 'number_button.dart';

class SpeedControl extends StatelessWidget {
  final int currentSpeed;
  final Function onSpeedChanged;
  final Color tempColor;

  const SpeedControl({
    Key key,
    @required this.currentSpeed,
    @required this.onSpeedChanged,
    @required this.tempColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: wrapInCard(
        backgroundColor: tempColor.withOpacity(0.5),
        padding: defaultPadding - 4,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Speed', style: Theme.of(context).textTheme.bodyText1),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [1, 2, 3]
                  .map((i) => NumberButton(
                        number: i,
                        isSelected: currentSpeed == i,
                        onTap: onSpeedChanged,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
