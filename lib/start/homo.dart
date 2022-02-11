// ignore_for_file: prefer_const_constructors, file_names,

import 'package:flutter/material.dart';

import 'package:get/get_instance/src/extension_instance.dart';

import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:puzzled/backend/login.dart';
import 'package:puzzled/gamescreen/ScreenTwo.dart';

import '../constant.dart';

class FirstScreen extends StatelessWidget {
  final controler = Get.put(LogniController());
  FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 300.0,
          width: 300.0,
          child: Image.asset(
            "assets/animate/image_processing20211024-715-14nmgcl.gif",
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        RoundedButton(
          name: " Guest",
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ScreenTwo(),
              ),
            );
          },
        ),
        SizedBox(
          height: 30.0,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Divider(
                indent: 35.0,
                thickness: 2.0,
              ),
            ),
            Text(
              "OR",
              style: GoogleFonts.notoSans(
                fontSize: 25.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
            Expanded(
              flex: 1,
              child: Divider(
                endIndent: 35.0,
                thickness: 2.0,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.0,
        ),
        RoundedButton(
          name: " google",
          press: () {
            controler.login();
          },
        ),
        SizedBox(
          height: 50.0,
        ),
        RoundedButton(
          name: " apple",
          press: () {},
        ),
        SizedBox(
          height: 10.0,
        ),
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
      width: 300.0,
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
          onTap: press,
          child: Text(
            name,
            style: GoogleFonts.notoSans(
              fontSize: 32.0,
              color: Colors.grey.shade800,
            ),
          ),
        ),
      ),
    );
  }
}
