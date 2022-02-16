// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzled/constant.dart';
import 'package:puzzled/puzzle1/puzzle1.dart';

import 'titlecard.dart';

class ScreenThree extends StatefulWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
              return Wide(size: _size);
            }
            if (constraints.maxWidth > 650.0) {
              return const LessWidth();
            } else {
              return const PhoneScreen();
            }
          })
        ],
      ),
    );
  }
}

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          PhoneSizegame(),
          SizedBox(
            height: 30.0,
          ),
          PhoneSizegame(),
          SizedBox(
            height: 30.0,
          ),
          PhoneSizegame(),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}

class PhoneSizegame extends StatelessWidget {
  const PhoneSizegame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          color: kdarkblue,
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                name: " solo",
                press: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Puzzle1(),
                    ),
                  );
                },
                width: _size.width / 2.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RoundedButton(
                name: " friends",
                press: () {},
                width: _size.width / 2.5,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class LessWidth extends StatelessWidget {
  const LessWidth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
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

class Wide extends StatelessWidget {
  const Wide({
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
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _size.width > 1350 ? 30.0 : 7.0,
        ),
        GameCardH(),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _size.width > 1350 ? 30.0 : 7.0,
        ),
        GameCardH(),
      ],
    );
  }
}

class RoundedButton extends StatefulWidget {
  final String name;
  final VoidCallback press;

  final double width;

  const RoundedButton({
    Key? key,
    required this.name,
    required this.press,
    required this.width,
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    bool _ispress = false;
    return Center(
      child: Container(
        height: 55.0,
        width: widget.width,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              offset: Offset(4, 4.0),
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: greey,
              blurRadius: 10.0,
              offset: Offset(-4.0, -4.0),
              spreadRadius: 1.0,
            )
          ],
          borderRadius: BorderRadius.circular(30.0),
          color: black,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                _ispress = !_ispress;
              });
              widget.press();
            },
            child: Text(
              widget.name,
              style: GoogleFonts.notoSans(
                fontSize: 32.0,
                color: Colors.grey.shade800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
