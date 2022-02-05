// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types

// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:puzzled/constant.dart';
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
            height: 20.0,
          ),
          LayoutBuilder(
              builder: (BuildContext ctx, BoxConstraints constraints) {
            if (constraints.maxWidth >= 1250.0) {
              return wide(size: _size);
            }
            if (constraints.maxWidth > 650.0) {
              return lesswidth();
            } else {
              return phonescreen();
            }
          })
        ],
      ),
    );
  }
}

class phonescreen extends StatelessWidget {
  const phonescreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: kblue,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(11.0),
                child: Container(
                  height: 200.0,
                  width: 200.0,
                ),
              ),
              Column(
                children: [],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(),
        SizedBox(
          height: 10.0,
        ),
        Container(),
      ],
    );
  }
}

class lesswidth extends StatelessWidget {
  const lesswidth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 0.0,
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
}

class wide extends StatelessWidget {
  const wide({
    Key? key,
    required Size size,
  })  : _size = size,
        super(key: key);

  final Size _size;

  @override
  Widget build(BuildContext context) {
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
  }
}
