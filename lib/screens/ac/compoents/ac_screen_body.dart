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
  bool _powerdOn = false;
  int _currentSpeed = 1;
  int _currentItem = 1;

  double _maxTemp = 30;
  double _minTemp = 16;

  double _progress = 0.5;
  Color _temperatureTint = getColor(0.5);

  double _getProgress(double value) =>
      ((value - _minTemp) / (_maxTemp - _minTemp));

  void _updateSelectedItem(int item) => setState(() {
        _currentItem = item;
      });

  void _updateFanSpeed(int speed) => setState(() {
        _currentSpeed = speed;
      });

  void _updatePowerState(bool isChecked) => setState(() {
        _powerdOn = isChecked;
      });

  void _updateTemperature(double temp) => setState(() {
        _currentTemp = temp;
        _progress = _getProgress(_currentTemp);
        _temperatureTint = getColor(_progress);
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            _temperatureTint.withOpacity(0.1),
            _temperatureTint,
          ],
        ),
      ),
      child: SafeArea(
        child: Column(
          children: [
            ConditionerMode(
              onTap: _updateSelectedItem,
              selectedItem: _currentItem,
              tempColor: _temperatureTint,
            ),
            Expanded(
              child: TempDisplay(
                currentTemp: _currentTemp,
                progress: _progress,
                mColor: _temperatureTint,
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
