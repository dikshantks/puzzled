// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:puzzled/backend/login.dart';
import 'package:puzzled/constant.dart';

import 'package:puzzled/gamescreen/ScreenThree.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({
    Key? key,
  }) : super(key: key);

  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final controler = Get.put(LogniController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 800.0,
        leading: Flexible(
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: Image.network(
                        controler.googleaccount.value?.photoUrl ?? ' ')
                    .image,
                radius: 20.0,
              ),
              Flexible(
                child: Container(
                  padding: EdgeInsets.only(right: 5.0),
                  child: Text(
                    controler.googleaccount.value?.displayName ?? "Guest101",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        title: Text(" this text "),
        elevation: 0.0,
        automaticallyImplyLeading: true,
      ),
      body: ScreenThree(),
    );
  }
}
