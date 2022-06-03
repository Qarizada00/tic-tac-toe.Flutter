// ignore_for_file: use_key_in_widget_constructors

import 'package:board/home.dart';

import 'package:flutter/material.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.green.shade50),
      home: Screen1(),
    );
  }
}
