import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/utils/hex.dart';

class IntroPage extends StatefulWidget{
  IntroPageState createState()=>IntroPageState();
}
class IntroPageState extends State<IntroPage>{

  void initState(){
    super.initState();
    Timer(Duration(seconds: 2), (){
      Navigator.pushNamed(context, Routes.SPLASH);
    });
  }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: HexColor("#72E3E7"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: SizedBox(),),
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