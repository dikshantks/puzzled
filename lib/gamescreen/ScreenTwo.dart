// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:puzzled/gamescreen/ScreenThree.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: ScreenThree(),
    );
  }
}
