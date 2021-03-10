import 'package:flutter/material.dart';

import '../../constants.dart';
import 'compoents/conditioner_mode.dart';
import 'compoents/power_control.dart';
import 'compoents/speed_control.dart';
import 'compoents/temp_slider.dart';

class ACScreen extends StatelessWidget {
  const ACScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Smart AC',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.black),
        ),
        leading: Row(
          children: [
            SizedBox(width: 8),
            BackButton(color: Colors.black),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 92,
        centerTitle: true,
      ),
      body: Container(
        decoration: gradientDecoration,
        child: SafeArea(
          child: Column(
            children: [
              ConditionerMode(),
              Expanded(
                child: Text('text'),
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
              TemperatureSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
