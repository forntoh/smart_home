import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class TemperatureSlider extends StatelessWidget {
  final Function onTempChanged;
  final double maxTemp;
  final double minTemp;
  final double currentTemp;
  final Color tempColor;

  const TemperatureSlider({
    Key key,
    @required this.onTempChanged,
    @required this.maxTemp,
    @required this.minTemp,
    @required this.currentTemp,
    @required this.tempColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        children: [
          Expanded(
            child: wrapInCard(
              backgroundColor: tempColor.withOpacity(0.5),
              padding: defaultPadding - 4,
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Temp', style: Theme.of(context).textTheme.bodyText1),
                  Row(
                    children: [
                      Text('${minTemp.toInt()}°C'),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.white,
                          value: currentTemp,
                          max: maxTemp,
                          min: minTemp,
                          onChanged: onTempChanged,
                        ),
                      ),
                      Text('${maxTemp.toInt()}°C'),
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
