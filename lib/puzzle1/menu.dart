// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:puzzled/start/homo.dart';

class Menu extends StatelessWidget {
  Menu({
    Key? key,
    required this.reset,
    required this.move,
    required this.secondspassed,
  }) : super(key: key);

  final Function reset;

  int move;
  int secondspassed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedButton(name: " reset", press: () => reset()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Moves : $move",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                " TIme : $secondspassed",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
