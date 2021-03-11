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
  double _currentTemp = 23;
  int _currentSpeed = 1;
  bool _powerdOn = false;

  double _maxTemp = 30;
  double _minTemp = 16;

  double _getProgress(double value) =>
      ((value - _minTemp) / (_maxTemp - _minTemp));

  void _updateFanSpeed(int speed) => setState(() {
        _currentSpeed = speed;
      });

  void _updatePowerState(bool isChecked) => setState(() {
        _powerdOn = isChecked;
      });

  void _updateTemperature(double temp) => setState(() {
        _currentTemp = temp;
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradientDecoration,
      child: SafeArea(
        child: Column(
          children: [
            ConditionerMode(),
            Expanded(
              child: TempDisplay(
                currentTemp: _currentTemp,
                progress: _getProgress(_currentTemp),
                mColor: primaryColor,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Container(
                height: 96,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SpeedControl(
                      currentSpeed: _currentSpeed,
                      onSpeedChanged: _updateFanSpeed,
                    ),
                    SizedBox(width: defaultPadding),
                    PowerControl(
                      isOn: _powerdOn,
                      onSwitched: _updatePowerState,
                    ),
                  ],
                ),
              ),
            ),
            TemperatureSlider(
              minTemp: _minTemp,
              maxTemp: _maxTemp,
              currentTemp: _currentTemp,
              onTempChanged: _updateTemperature,
            ),
          ],
        ),
      ),
    );
  }
}
