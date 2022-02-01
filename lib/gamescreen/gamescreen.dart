// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
// import 'package:puzzled/constant.dart';

import 'titlecard.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
          ),
          LayoutBuilder(
              builder: (BuildContext ctx, BoxConstraints constraints) {
            if (constraints.maxWidth >= 1250.0) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  GameCardH(),
                  SizedBox(
                    width: _size.width > 1350 ? 30.0 : 7.0,
                  ),
                  GameCardH(),
                  SizedBox(
                    width: _size.width > 1350 ? 30.0 : 7.0,
                  ),
                  GameCardH(),
                ],
              );
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 30.0,
                    ),
                    GameCardV(),
                    SizedBox(
                      height: 30.0,
                    ),
                    GameCardV(),
                    SizedBox(
                      height: 30.0,
                    ),
                    GameCardV(),
                  ],
                ),
              );
            }
          })
        ],
      ),
    );
  }
}
