import 'package:flutter/material.dart';
import 'package:smart_home/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: wrapInCard(
        context,
        padding: defaultPadding - 4,
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
              children: [1, 2, 3]
                  .map((i) => NumberButton(
                        number: i,
                        isSelected: selectedSpeed == i,
                        onTap: (i) {
                          setState(() {
                            selectedSpeed = i;
                          });
                        },
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
