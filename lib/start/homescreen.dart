// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
    return Center(
        child: Container(
      height: 200.0,
      color: Theme.of(context).primaryColor,
      child: Text(
        "hola ",
        style: TextStyle(
          fontSize: 100.0,
        ),
      ),
    ));
  }
}
