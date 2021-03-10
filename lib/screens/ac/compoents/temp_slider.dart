import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class TemperatureSlider extends StatelessWidget {
  const TemperatureSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: wrapInCard(
              context,
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Temp'),
                  Row(
                    children: [
                      Text('18 C'),
                      Expanded(
                        child: Slider(
                          value: 20,
                          max: 30,
                          min: 16,
                        ),
                      ),
                      Text('30 C'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}