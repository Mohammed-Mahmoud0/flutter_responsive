// ignore_for_file: use_key_in_widget_constructors, avoid_print, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:learn_responsive/desktop.dart';
import 'package:learn_responsive/mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.minWidth.toInt());
          if (constraints.minWidth.toInt() <= 560)
            return MobileScreen();
          return DesktopScreen();
        },
      ),
    );
  }
}
