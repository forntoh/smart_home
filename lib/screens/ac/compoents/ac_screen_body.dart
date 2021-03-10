import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'conditioner_mode.dart';
import 'power_control.dart';
import 'speed_control.dart';
import 'temp_display.dart';
import 'temp_slider.dart';

class ACScreenBody extends StatefulWidget {
  const ACScreenBody({
    Key key,
  }) : super(key: key);

  @override
  _ACScreenBodyState createState() => _ACScreenBodyState();
}

class _ACScreenBodyState extends State<ACScreenBody> {
  double _currentTemp = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientDecoration,
      child: SafeArea(
        child: Column(
          children: [
            ConditionerMode(),
            Expanded(
              child: TempDisplay(currentTemp: _currentTemp),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Container(
                height: 92,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SpeedControl(),
                    SizedBox(width: defaultPadding),
                    PowerControl(),
                  ],
                ),
              ),
            ),
            TemperatureSlider(
              onTempChanged: (double temp) {
                setState(() {
                  _currentTemp = temp;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
