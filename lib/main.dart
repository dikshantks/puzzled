// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 5.0,
                  ),
                  child: Center(
                    child: Text(
                      "Tallete",
                      style: GoogleFonts.notoSansMono(
                        textStyle: TextStyle(
                          fontSize: 50.0,
                          color: Color(0xff3434ff),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Text(
                    "APP for managing your notes",
                    style: GoogleFonts.notoSansMono(
                      textStyle: TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40.0),
                  child: Container(
                    height: 300.0,
                    color: Colors.blueGrey,
                    child: Image.asset(
                      "assets/images/img1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 60.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                color: Color(0xff3434ff),
                child: Text(
                  "LOGIN",
                  style: GoogleFonts.notoSansMono(
                    textStyle: TextStyle(
                      fontSize: 30.0,
                      color: Color(0xffa34343),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
