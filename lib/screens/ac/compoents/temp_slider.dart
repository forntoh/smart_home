import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class TemperatureSlider extends StatefulWidget {
  const TemperatureSlider({
    Key key,
  }) : super(key: key);

  @override
  _TemperatureSliderState createState() => _TemperatureSliderState();
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  double _currentTemp = 18;
  int min = 16;
  int max = 30;

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
                      Text('$min°C'),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.white,
                          value: _currentTemp,
                          max: max.toDouble(),
                          min: min.toDouble(),
                          onChanged: (double value) {
                            setState(() {
                              _currentTemp = value;
                            });
                          },
                        ),
                      ),
                      Text('$max°C'),
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
