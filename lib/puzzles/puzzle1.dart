// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:puzzled/constant.dart';
import 'package:puzzled/start/homo.dart';

import 'grid and button.dart';
import 'menu.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

class Puzzle1 extends StatefulWidget {
  const Puzzle1({Key? key}) : super(key: key);

  @override
  _Puzzle1State createState() => _Puzzle1State();
}

class _Puzzle1State extends State<Puzzle1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(" klfldhgh"),
      ),
      body: Board(),
    );
  }
}

class Board extends StatefulWidget {
  const Board({
    Key? key,
  }) : super(key: key);

  @override
  State<Board> createState() => _BoardState();
}

class _BoardState extends State<Board> {
  var number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  int move = 0;
  final duration = Duration(seconds: 1);
  int secondsPassed = 0;
  bool isActive = false;

  void reset() {
    setState(() {
      number.shuffle();
      move = 0;
      secondsPassed = 0;
      isActive = false;
    });
  }

  @override
  void initState() {
    super.initState();

    number.shuffle();
  }

  void startTime() {
    if (isActive) {
      setState(() {
        secondsPassed = secondsPassed + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
//////////////////////////////////////////////////////////////////////////////////////////////
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          SafeArea(
            child: Grid(
              size: _size,
              number: number,
              clickgrid: clickGrid,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Menu(
            reset: () => reset(),
            move: move,
          ),
        ],
      ),
    );
  }

  void clickGrid(index) {
    if (index - 1 >= 0 && number[index - 1] == 0 && index % 4 != 0 ||
        index + 1 < 16 && number[index + 1] == 0 && (index + 1) % 4 != 0 ||
        (index - 4 >= 0 && number[index - 4] == 0) ||
        (index + 4 < 16 && number[index + 4] == 0)) {
      setState(() {
        number[number.indexOf(0)] = number[index];
        number[index] = 0;
        move++;
      });
    }
  }
}

