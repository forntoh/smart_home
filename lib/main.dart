import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_home/screens/ac/ac_screen.dart';

import 'theme/custom_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Home',
      theme: CustomTheme.myTheme,
      home: ACScreen(),
    );
  }
}
