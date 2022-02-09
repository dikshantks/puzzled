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
    return Grid();
  }
}

class Grid extends StatelessWidget {
  const Grid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final number = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    return SizedBox(
      height: 400.0,
      child: Padding(
        padding: EdgeInsets.all(6.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: number.length,
          itemBuilder: (context, index) {
            return GridButton(
              text: "text",
              click: () {},
            );
          },
        ),
      ),
    );
  }
}

class GridButton extends StatelessWidget {
  const GridButton({
    Key? key,
    required this.text,
    required this.click,
  }) : super(key: key);
  final String text;
  final Function click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: () {},
    );
  }
}
