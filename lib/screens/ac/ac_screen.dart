import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widget_utils.dart';
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
        title: Text('Smart AC'),
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        backgroundColor: Colors.transparent,
        toolbarHeight: 90,
      ),
      body: Container(
        decoration: gradientDecoration,
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedIconButton(
                    icon: Icon(Icons.lock_clock),
                  ),
                  RoundedIconButton(
                    icon: Icon(Icons.ac_unit),
                  ),
                  RoundedIconButton(
                    icon: Icon(Icons.wb_sunny_outlined),
                  ),
                  RoundedIconButton(
                    icon: Icon(Icons.wb_cloudy_outlined),
                  ),
                ],
              ),
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

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({
    Key key,
    @required this.icon,
  }) : super(key: key);

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return wrapInCard(context, widget: icon, padding: defaultPadding + 4);
  }
}
