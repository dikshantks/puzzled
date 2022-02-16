// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

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

  int secondsPassed = 0;

  Timer? timer;

  static const duration = Duration(seconds: 1);
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

    timer ??= Timer.periodic(duration, (Timer t) {
      startTime();
    });

    //////////////////////////////////////
    //////////////////////////////////////
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
            secondspassed: secondsPassed,
          ),
        ],
      ),
    );
  }

  void clickGrid(index) {
    if (secondsPassed == 0) {
      isActive = true;
    }
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

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length - 1; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkwin() {
    if (isSorted(number)) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              height: 300.0,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("you won!!"),
                    SizedBox(
                      width: 220.0,
                      child: ElevatedButton(
                        onPressed: () {
                          navigator?.pop(context);
                        },
                        child: Text("close"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      );
    }
  }
}
