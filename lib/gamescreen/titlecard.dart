import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:puzzled/start/WelcomeScreen.dart';

import '../constant.dart';

class GameCardH extends StatelessWidget {
  const GameCardH({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90.0),
                    color: kgreen,
                  ),
                  height: 300.0,
                  width: 400.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundButton(
                  name: "SOLO",
                  press: () {},
                  color: kdarkblue,
                ),
                SizedBox(
                  height: 30.0,
                ),
                RoundButton(
                  name: "Friends",
                  press: () {},
                  color: kdarkblue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GameCardV extends StatelessWidget {
  const GameCardV({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Center(
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  color: kdarkblue,
                  height: 300.0,
                  width: 300.0,
                ),
                const SizedBox(
                  width: 100.0,
                ),
                Container(
                  child: Column(
                    children: [
                      RoundButton(
                          name: "SOLO",
                          press: () {
                            return print(" solooo");
                          },
                          color: kblue),
                      SizedBox(
                        height: 50.0,
                      ),
                      RoundButton(name: "FRIENDS", press: () {}, color: kblue),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RoundButton extends StatelessWidget {
  final String name;
  final VoidCallback press;
  final Color color;
  const RoundButton({
    Key? key,
    required this.name,
    required this.press,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 300.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0), color: color),
      child: TextButton(
        child: Text(
          name,
          style: GoogleFonts.notoSans(fontSize: 32.0, color: Colors.white),
        ),
        onPressed: press,
      ),
    );
  }
}
