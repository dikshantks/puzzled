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
                color: color3,
              ),
            ),
          ),
          RoundedButton(
            color: color3,
            name: " Guest",
            press: () {},
          ),
          SizedBox(
            height: 50.0,
          ),
          RoundedButton(
            color: color3,
            name: " Google",
            press: () {},
          ),
          SizedBox(
            height: 20.0,
          ),
          RoundedButton(
            color: color2,
            name: " apple",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String name;
  final VoidCallback press;
  final Color color;
  const RoundedButton({
    Key? key,
    required this.name,
    required this.press,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 300.0,
      decoration: BoxDecoration(
      
          borderRadius: BorderRadius.circular(10.0), color: color),
          
      child: TextButton(
        
        child: Text(
          name,
          style: GoogleFonts.notoSans(fontSize: 32.0, color: Colors.grey),
        ),
        onPressed: () {},
      ),
    );
  }
}
