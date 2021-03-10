import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class TempDisplay extends StatelessWidget {
  const TempDisplay({
    Key key,
    @required this.currentTemp,
  }) : super(key: key);

  final double currentTemp;
  final double trackWidth = defaultPadding + 4;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding * 3),
        child: Stack(
          children: [
            Expanded(
              child: Container(
                child: ClipOval(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                    child: Container(
                      color: Colors.white38,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: trackWidth,
              right: trackWidth,
              top: trackWidth,
              bottom: trackWidth,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(300),
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).primaryColor.withOpacity(0.45),
                        blurRadius: defaultPadding,
                        offset: Offset(0, defaultPadding),
                        spreadRadius: 4,
                      )
                    ]),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 8),
                      Text(
                        '${currentTemp.toInt()}',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          '°C',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
