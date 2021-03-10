import 'package:flutter/material.dart';

import 'compoents/ac_screen_body.dart';

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
      body: ACScreenBody(),
    );
  }
}
