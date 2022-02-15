

import 'package:flutter/material.dart';
import 'package:puzzled/start/homo.dart';

class Menu extends StatelessWidget {
  Menu({
    Key? key,
    required this.reset,
    required this.move,
  }) : super(key: key);

  final Function reset;

  int move;

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
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "Moves : $move",
                style: TextStyle(
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
