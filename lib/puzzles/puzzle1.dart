// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:puzzled/constant.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class PuzzleOne extends StatefulWidget {
  const PuzzleOne({Key? key}) : super(key: key);

  @override
  _PuzzleOneState createState() => _PuzzleOneState();
}

class _PuzzleOneState extends State<PuzzleOne> {
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
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: Text(" puzzle "),
          ),
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
    return Container(
      color: kdarkblue,
      child: Center(
        child: Text(" puzzle "),
      ),
    );
  }
}
