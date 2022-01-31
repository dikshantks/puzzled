// ignore_for_file: prefer_const_constructors, file_names, unnecessary_import

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:puzzled/backend/login.dart';
import 'package:puzzled/gamescreen/enter.dart';

import '../constant.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  final controler = Get.put(LogniController());

  @override
  Widget build(BuildContext context) {
    // var Size = MediaQuery.of(context).size;
    return SingleChildScrollView(child: Obx(() {
      if (controler.googleaccount.value == null) {
        return Column(
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Container(
              height: 500.0,
              width: 500.0,
              decoration: BoxDecoration(
                color: kgreen,
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            RoundedButton(
              color: kblue,
              name: " Gust",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EnterScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Divider(
                    indent: 35.0,
                    thickness: 2.0,
                    color: color5,
                  ),
                ),
                Text(
                  "OR",
                  style: GoogleFonts.notoSans(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w600,
                    color: kdarkblue,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Divider(
                    endIndent: 35.0,
                    thickness: 2.0,
                    color: color5,
                  ),
                ),
              ],
            ),
            RoundedButton(
              color: kgreen,
              name: " Google",
              press: () {
                controler.login();
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              color: kdarkblue,
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
        return EnterScreen();
      }
    }));
  }
}

class RoundedButton extends StatelessWidget {
  final String name;
  final VoidCallback press;
  final Color color;
  const RoundedButton({
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
          borderRadius: BorderRadius.circular(10.0), color: color),
      child: TextButton(
        child: Text(
          name,
          style: GoogleFonts.notoSans(fontSize: 32.0, color: color5),
        ),
        onPressed: press,
      ),
    );
  }
}

// Column(
//         children: <Widget>[
//           SizedBox(
//             height: 50.0,
//           ),
//           Container(
//             height: 500.0,
//             width: 500.0,
//             decoration: BoxDecoration(
//               color: kgreen,
//               borderRadius: BorderRadius.circular(30.0),
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           RoundedButton(
//             color: kblue,
//             name: " Gust",
//             press: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => const EnterScreen(),
//                 ),
//               );
//             },
//           ),
//           SizedBox(
//             height: 40.0,
//           ),
//           Row(
//             children: <Widget>[
//               Expanded(
//                 flex: 1,
//                 child: Divider(
//                   indent: 35.0,
//                   thickness: 2.0,
//                   color: color5,
//                 ),
//               ),
//               Text(
//                 "OR",
//                 style: GoogleFonts.notoSans(
//                   fontSize: 25.0,
//                   fontWeight: FontWeight.w600,
//                   color: kdarkblue,
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Divider(
//                   endIndent: 35.0,
//                   thickness: 2.0,
//                   color: color5,
//                 ),
//               ),
//             ],
//           ),
//           RoundedButton(
//             color: kgreen,
//             name: " Google",
//             press: () {
//               GoogleSignIn().signIn();
//             },
//           ),
//           SizedBox(
//             height: 20.0,
//           ),
//           RoundedButton(
//             color: kdarkblue,
//             name: " apple",
//             press: () {
//               // return print(" heelo ");
//             },
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//         ],
//       ),