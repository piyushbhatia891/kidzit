import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/utils/hex.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroPage extends StatefulWidget {
  IntroPageState createState() => IntroPageState();
}

class IntroPageState extends State<IntroPage> {
  SharedPreferences _preferences;
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      _initializePreferences();
    });
  }

  void _initializePreferences() async {
    _preferences = await SharedPreferences.getInstance();
    if (_preferences.containsKey("userId")) {
      Get.offNamed(Routes.SPLASH);
      if (_preferences.containsKey("cycle"))
        Get.offAllNamed(Routes.TRACK);
      else
        Get.offAllNamed("/home?url=${_preferences.getString("home_view")}");
    } else
      Get.offNamed(Routes.SPLASH);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#72E3E7"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Image.asset("assets/logo.jpg"),
          //TODO- Add stack details
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
