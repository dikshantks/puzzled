// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kblue = Color(0xff3590f3);
const kdarkblue = Color(0xff068589);
const kgreen = Color(0xff95E06C);
const black = Color(0xff141414);
const color5 = Color(0xffFfffff);
final greey = Colors.grey.shade900;


class Mytheme {
  static final lighttheme = ThemeData(
    scaffoldBackgroundColor: color5,
    colorScheme: const ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: black,
    colorScheme:const  ColorScheme.dark(),
    secondaryHeaderColor: black,
  );
}
