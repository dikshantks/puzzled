// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:puzzled/constant.dart';
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
        leading: Container(
          padding: EdgeInsets.all(3.0),
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 30.0,
              ),
              Text(
                "GUEST",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          LiteRollingSwitch(
              value: true,
              textOn: " dark",
              textOff: " light",
              colorOff: Colors.blueGrey,
              colorOn: kdarkblue,
              iconOn: Icons.dark_mode,
              iconOff: Icons.light_mode)
        ],
      ),
      body: Puzzle1(),
    );
  }
}

class Puzzle1 extends StatefulWidget {
  const Puzzle1({Key? key}) : super(key: key);

  @override
  _Puzzle1State createState() => _Puzzle1State();
}

class _Puzzle1State extends State<Puzzle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Mybar extends StatefulWidget {
  const Mybar({Key? key}) : super(key: key);

  @override
  State<Mybar> createState() => _MybarState();
}

class _MybarState extends State<Mybar> {
  @override
  Widget build(BuildContext context) {
    bool status = false;

    return AppBar(
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
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
    );
  }
}
