// ignore_for_file: prefer_const_constructors, file_names, unnecessary_import

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:puzzled/backend/login.dart';
import 'package:puzzled/gamescreen/enter.dart';

import '../constant.dart';

class ScreenOne extends StatelessWidget {
  ScreenOne({Key? key}) : super(key: key);

  final controler = Get.put(LogniController());

  @override
  Widget build(BuildContext context) {
    // var Size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Obx(
        () {
          if (controler.googleaccount.value == null) {
            return Column(
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Container(
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
                  height: 20.0,
                ),
                RoundedButton(
                  name: " apple",
                  press: () {
                    // return print(" heelo ");
                  },
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            );
          } else {
            return ScreenTwo();
          }
        },
      ),
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
