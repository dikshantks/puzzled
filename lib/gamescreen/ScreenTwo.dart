// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:puzzled/gamescreen/ScreenThree.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ScreenThree(),
    );
  }
}
