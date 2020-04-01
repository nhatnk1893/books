import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:web_bi/Template/widget/splash_widget.dart';
import 'package:web_bi/Template/screen/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeOut() {
    return new Timer(Duration(seconds: 1), handleTimeout);
  }

  void handleTimeout() {
    changeScreen();
  }

  changeScreen() {
    Navigator.pushReplacement(
        context,
        PageTransition(
            child: MainScreen(), type: PageTransitionType.leftToRight));
  }

  @override
  void initState() {
    super.initState();
    startTimeOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashWidget(),
    );
  }
}
