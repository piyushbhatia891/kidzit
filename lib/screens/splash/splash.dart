import 'package:flutter/material.dart';
import 'package:kidzit_app/models/onboarding_data.dart';
import 'package:kidzit_app/screens/login/index.dart';
import 'package:kidzit_app/screens/splash/index.dart';

class SplashScreen extends StatefulWidget{
  SplashScreenState createState()=>SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>{
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/onboarding1.png",
      title: "Be Happy",

    ),
    OnbordingData(
      imagePath: "assets/onboarding2.png",
      title: "Yoga",

    ),
    OnbordingData(
      imagePath: "assets/onboarding3.png",
      title: "Find  Community of love & support"
    ),
  ];
  Widget build(BuildContext context){
    return IntroScreen(list, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}