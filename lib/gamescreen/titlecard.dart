// ignore: invalid_language_version_override
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:puzzled/puzzles/puzzle1.dart';
// import 'package:puzzled/start/WelcomeScreen.dart';

import '/constant.dart';
import 'ScreenThree.dart';

class GameCardH extends StatelessWidget {
  const GameCardH({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    color: kgreen,
                  ),
                  height: 300.0,
                  width: 400.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                  width: 300.0,
                  name: "SOLO",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Puzzle1(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundedButton(
                  width: 300.0,
                  name: "Friends",
                  press: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Puzzle1(),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GameCardV extends StatelessWidget {
  const GameCardV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Center(
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: kdarkblue,
                  height: 300.0,
                  width: 300.0,
                ),
                SizedBox(
                  width: _size.width / 30,
                ),
                Column(
                  children: [
                    RoundedButton(
                      width: 200.0,
                      name: "SOLO",
                      press: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Puzzle1(),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    RoundedButton(
                      width: 200.0,
                      name: "FRIENDS",
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
