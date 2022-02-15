// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:puzzled/backend/login.dart';
import 'package:puzzled/constant.dart';
import 'package:puzzled/gamescreen/ScreenTwo.dart';

import 'package:puzzled/start/homo.dart';

import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controler = Get.put(LogniController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("App Bar without Back Button"),
    
      ),
      body: LayoutBuilder(
        builder: (BuildContext ctx, BoxConstraints constraints) {
          if (constraints.maxWidth >= 1500.0) {
            return WideScren();
          } else {
            return Expanded(
              child: Obx(
                () {
                  if (controler.googleaccount.value == null) {
                    return FirstScreen();
                  } else {
                    return ScreenTwo();
                  }
                },
              ),
            );
            
          }
        },
      ),
    );
  }
}

class WideScren extends StatelessWidget {
  const WideScren({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: kblue,
            child: Image.asset(
                'assets/animate/image_processing20211024-715-14nmgcl.gif'),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "helllo",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 100.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
