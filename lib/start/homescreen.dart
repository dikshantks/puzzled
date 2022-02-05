// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puzzled/constant.dart';

import 'package:puzzled/start/WelcomeScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1500.0) {
            return WideScren();
          } else {
            return WelcomeScreen();
          }
        },
      ),
    );
  }
}

class WideScren extends StatelessWidget {
  const WideScren({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: kblue,
            child: Image.asset(
                'assets/animate/image_processing20211024-715-14nmgcl.gif'),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "helllo",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 100.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
