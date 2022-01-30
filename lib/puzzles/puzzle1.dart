// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:puzzled/constant.dart';
import 'package:puzzled/gamescreen/gamescreen.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class PuzzleOne extends StatefulWidget {
  const PuzzleOne({Key? key}) : super(key: key);

  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<PuzzleOne> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Row(
          children: <Widget>[
            Container(
              height: 20,
              width: 20.0,
              color: kblue,
            ),
            Text(
              " Guest101",
              style: TextStyle(fontSize: 20.0, color: kblue),
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: FlutterSwitch(
              width: 125.0,
              height: 60.0,
              valueFontSize: 25.0,
              toggleSize: 40.0,
              value: status,
              borderRadius: 30.0,
              showOnOff: true,
              onToggle: (bool val) {
                setState(() {
                  status = val;
                });
              },
            ),
          )
        ],
      ),
      body: puzzle1(),
    );
  }
}

class puzzle1 extends StatefulWidget {
  const puzzle1({Key? key}) : super(key: key);

  @override
  _puzzle1State createState() => _puzzle1State();
}

class _puzzle1State extends State<puzzle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold ();
  }
}
