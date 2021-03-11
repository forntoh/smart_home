import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../widget_utils.dart';

class PowerControl extends StatelessWidget {
  final bool isOn;
  final Function onSwitched;

  const PowerControl({
    Key key,
    @required this.isOn,
    @required this.onSwitched,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: wrapInCard(
        context,
        padding: defaultPadding - 4,
        widget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Power', style: Theme.of(context).textTheme.bodyText1),
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
                    activeColor: Colors.white38,
                    trackColor: Colors.white12,
                    value: isOn,
                    onChanged: onSwitched,
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
