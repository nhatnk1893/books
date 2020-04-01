import 'package:flutter/material.dart';
import 'package:web_bi/Template/screen/main.dart';
import 'package:web_bi/Template/screen/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WEB-BI',
      home: MainScreen(),
    );
  }
}
