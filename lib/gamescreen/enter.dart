// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:puzzled/gamescreen/gamescreen.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class EnterScreen extends StatefulWidget {
  const EnterScreen({Key? key}) : super(key: key);

  @override
  _EnterScreenState createState() => _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Icon(Icons.ac_unit),
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
      body: GameScreen(),
    );
  }
}
