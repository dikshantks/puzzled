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
            return Center(
                child: Text(
              "helo",
              style: TextStyle(
                fontSize: 100.0,
              ),
            ));
          } else {
            return WelcomeScreen();
          }
        },
      ),
    );
  }
}
