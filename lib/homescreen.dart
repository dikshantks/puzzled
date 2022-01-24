import 'package:flutter/material.dart';

import 'package:flutter_switch/flutter_switch.dart';
import 'package:puzzled/WelcomeScreen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
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
      body: WelcomeScreen(),
    );
  }
}
