// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, camel_case_types

// import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzled/constant.dart';
// import 'package:puzzled/constant.dart';

import 'titlecard.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          PhoneSizegame(),
          SizedBox(
            height: 10.0,
          ),
          PhoneSizegame(),
          SizedBox(
            height: 10.0,
          ),
          PhoneSizegame(),
        ],
      ),
    );
  }
}

class PhoneSizegame extends StatelessWidget {
  const PhoneSizegame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: kdarkblue,
          height: MediaQuery.of(context).size.height * 0.4,
          width: MediaQuery.of(context).size.width * 0.8,
          padding: EdgeInsets.all(20.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Row(
          children: [
            RoundButton(name: " single", press: () {}, color: kblue),
            RoundButton(name: " single", press: () {}, color: kblue),
          ],
        ),
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
    return Container(
      height: 50.0,
      width: 100.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(5.0, 5.0),
          ),
          BoxShadow()
        ],
        borderRadius: BorderRadius.circular(30.0),
        color: kdarkblue,
      ),
      child: TextButton(
        child: Text(
          name,
          style: GoogleFonts.notoSans(
            fontSize: 32.0,
            color: black,
          ),
        ),
        onPressed: press,
      ),
    );
  }
}
