// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const kblue = Color(0xff3590f3);
const kdarkblue = Color(0xff068589);
const kgreen = Color(0xff95E06C);
const black = Color(0xff1C1018);
const color5 = Color(0xffFfffff);

class Mytheme {
  static final lighttheme = ThemeData(
    primaryColor: color5,
    colorScheme: ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
    primaryColor: black,
    colorScheme: ColorScheme.dark(),
  );
}
