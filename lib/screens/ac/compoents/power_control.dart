import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widget_utils.dart';

class PowerControl extends StatefulWidget {
  const PowerControl({
    Key key,
  }) : super(key: key);

  @override
  _PowerControlState createState() => _PowerControlState();
}

class _PowerControlState extends State<PowerControl> {
  bool isOn = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: wrapInCard(
        context,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Power'),
            Spacer(),
            Row(
              children: [
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: 'OFF',
                    style: TextStyle(
                        color: Colors.white.withOpacity(isOn ? 0.3 : 1)),
                  ),
                  TextSpan(
                    text: '/',
                    style: TextStyle(color: Colors.white.withOpacity(0.3)),
                  ),
                  TextSpan(
                    text: 'ON',
                    style: TextStyle(
                        color: Colors.white.withOpacity(isOn ? 1 : 0.3)),
                  ),
                ])),
                Spacer(),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    activeColor: Colors.white12,
                    trackColor: Colors.white12,
                    value: isOn,
                    onChanged: (isChecked) {
                      setState(() {
                        isOn = isChecked;
                      });
                    },
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
