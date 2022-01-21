// ignore_for_file: prefer_const_constructors, file_names, unnecessary_import

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SafeArea(
              maintainBottomViewPadding: true,
              child: Container(
                height: 500.0,
                color: color5,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          RoundedButton(name: " Guest", press: () {}),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String name;
  final VoidCallback press;
  const RoundedButton({
    Key? key,
    required this.name,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      height: Size.height * 0.1,
      width: 300.0,
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          name,
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
