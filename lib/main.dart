import 'package:flutter/material.dart';
import 'gamescreen/enter.dart';

import 'start/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
<<<<<<< HEAD
      home: EnterScreen(),
=======
      home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DK is a duche dick!!!!"),
      ),
>>>>>>> 35a3b198df4e7dbfc22e7d59e4c406f27689ecda
    );
  }
}
