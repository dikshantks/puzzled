// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_null_comparison

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:puzzled/constant.dart';
import 'package:puzzled/start/homo.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Board(),
            Menu(),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.0,
      width: MediaQuery.of(context).size.width,
      color: kgreen,
      alignment: Alignment.center,
      child: Center(
        child: Row(
          children: [RoundedButton(name: " reset", press: () {})],
        ),
      ),
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

    return SafeArea(
      child: Grid(
        size: _size,
        number: number,
        clickgrid: clickGrid,
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
      });
    }
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
    required this.clickgrid,
    required Size size,
    required this.number,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final List<int> number;
  final Function clickgrid;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: _size.width <= 600 ? 450.0 : 600,
      width: _size.width <= 600 ? 450.0 : 600,
      padding: EdgeInsets.all(10.0),
      color: kblue,
      child: Padding(
        padding: EdgeInsets.all(0.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: sqrt(number.length).toInt(),
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0),
          itemCount: number.length,
          itemBuilder: (context, index) {
            return number[index] != 0
                ? GridButton(
                    text: "${number[index]}",
                    click: () {
                      clickgrid(index);
                    },
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}

class GridButton extends StatefulWidget {
  const GridButton({
    Key? key,
    required this.text,
    required this.click,
  }) : super(key: key);
  final String text;
  final Function click;

  @override
  State<GridButton> createState() => _GridButtonState();
}

class _GridButtonState extends State<GridButton> {
  @override
  Widget build(BuildContext context) {
    var color1 = kgreen;

    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: color1,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
      onTap: () => widget.click(),
    );
  }
}
