import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/screens/baby_kicks/index.dart';
import 'package:kidzit_app/screens/glass/index.dart';
import 'package:kidzit_app/screens/home_web/index.dart';
import 'package:kidzit_app/screens/index.dart';
import 'package:kidzit_app/screens/login_otp/index.dart';
import 'package:kidzit_app/screens/splash/splash.dart';
import 'package:kidzit_app/screens/tools/index.dart';
import 'package:kidzit_app/screens/weight/edit_weight.dart';
import 'package:kidzit_app/screens/weight/index.dart';
import 'package:kidzit_app/screens/weight/list.dart';
import 'package:kidzit_app/screens/widgets.dart';
import 'package:kidzit_app/screens/yoga/index.dart';
import 'package:kidzit_app/shared/constants.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: Constants.APP_NAME,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          primaryColor: Color(0xFFFA2A88),
          indicatorColor: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        getPages: Pages.pages,
        home: IntroPage());
  }
}
