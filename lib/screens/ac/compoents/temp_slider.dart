import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class TemperatureSlider extends StatefulWidget {
  final Function onTempChanged;

  const TemperatureSlider({
    Key key,
    @required this.onTempChanged,
  }) : super(key: key);

  @override
  _TemperatureSliderState createState() =>
      _TemperatureSliderState(onChanged: onTempChanged);
}

class _TemperatureSliderState extends State<TemperatureSlider> {
  int min = 16;
  int max = 30;
  double _currentTemp = 16;

  Function onChanged;

  _TemperatureSliderState({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: wrapInCard(
              context,
              padding: defaultPadding - 4,
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temp',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
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
                              onChanged(value);
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
