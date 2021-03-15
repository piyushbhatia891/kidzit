import 'package:flutter/material.dart';
import 'package:kidzit_app/models/onboarding_data.dart';
import 'package:kidzit_app/screens/login/index.dart';
import 'package:kidzit_app/screens/splash/index.dart';
import 'package:kidzit_app/shared/routes.dart';

class SplashScreen extends StatefulWidget {
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/1.JPEG",
      title: "Be Happy",
    ),
    OnbordingData(
      imagePath: "assets/2.JPEG",
      title: "Yoga",
    ),
    OnbordingData(
        imagePath: "assets/3.JPEG", title: "Find  Community of love & support"),
  ];
  Widget build(BuildContext context) {
    return IntroScreen(list, Routes.LOGIN);
  }
}
