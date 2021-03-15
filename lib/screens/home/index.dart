import 'package:kidzit_app/controller/header_calculator/header_controller.dart';
import 'package:kidzit_app/data/header/header_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './widgets/web_view_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/models/tool_model.dart';
import 'package:kidzit_app/screens/home/widgets/curve_painter.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  SharedPreferences preferences;
  List<ToolModel> model = [];
  bool _isLoading = true;

  void initState() {
    super.initState();
    initializePreferences();
  }

  initializePreferences() async {
    preferences = await SharedPreferences.getInstance();

    setState(() {
      _isLoading = false;
      model = [
        new ToolModel(
            imageUrl: "assets/embryo.png",
            type: "Fetal Growth",
            routeUrl:
                "/homeWeb?url=${preferences.getString("fetal_view")}${preferences.getInt("weeks").toString()}"),
        new ToolModel(
            imageUrl: "assets/affirmation.png",
            type: "Affirmation",
            routeUrl:
                "/homeWeb?url=${preferences.getString("affirmation_view")}${preferences.getInt("weeks").toString()}"),
        new ToolModel(
            imageUrl: "assets/heart.png",
            type: "Prenatal Physiology",
            routeUrl:
                "/homeWeb?url=${preferences.getString("physiology_view")}${preferences.getInt("weeks").toString()}"),
        new ToolModel(
            imageUrl: "assets/mother.png",
            type: "Useful Tips",
            routeUrl:
                "/homeWeb?url=${preferences.getString("tips_view")}/${preferences.getInt("weeks").toString()}"),
        new ToolModel(
            imageUrl: "assets/fruit.png",
            type: "Prenatal Food Chart",
            routeUrl:
                "/homeWeb?url=${preferences.getString("food_view")}/${preferences.getInt("weeks").toString()}"),
        new ToolModel(
            imageUrl: "assets/mum-pappa.png",
            type: "Daily Diary",
            routeUrl:
                "/homeWeb?url=${preferences.getString("daily_diary_view")}/${preferences.getInt("weeks").toString()}"),
      ];
    });
  }

  Widget build(BuildContext context) {
    final HeaderController _headerController =
        Get.put(HeaderController(headerRepository: HeaderRepository()));
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Obx(
                () => Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.5,
                      color: Colors.white,
                    ),
                    Positioned(
                      top: 0.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Image.asset(
                          "assets/circle.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      left: 20.0,
                      right: 20.0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 4,
                        child: Image.asset(
                          "assets/sonography.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 6,
                      left: 0.0,
                      child: CustomPaint(
                        painter: CurvePainter(week: 2),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 20.0,
                        left: 20.0,
                        right: 20.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                onPressed: () => Navigator.pop(context)),
                            IconButton(
                                icon: Icon(
                                  Icons.notification_important_outlined,
                                  color: Colors.white,
                                  size: 18.0,
                                ),
                                onPressed: null)
                          ],
                        )),
                    Positioned(
                        top: 40.0,
                        left: MediaQuery.of(context).size.width * 0.3,
                        right: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "${_headerController.list.length > 0 ? _headerController.list[0].result.week : "Loading"}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0),
                                ),
                                Text(
                                  "Weeks",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0),
                                )
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.38,
                      left: MediaQuery.of(context).size.width * 0.4,
                      right: MediaQuery.of(context).size.width * 0.4,
                      child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 15.0,
                                  spreadRadius: 2.0)
                            ]),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset("assets/embryo.png"),
                            Text(
                              "25",
                              style: TextStyle(color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 4,
                      left: 20.0,
                      right: 20.0,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${_headerController.list.length > 0 ? _headerController.list[0].result.contraction : "Loading"}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                                Text(
                                  "PER HOUR",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Contraction",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${_headerController.list.length > 0 ? _headerController.list[0].result.totalKicks : "Loading"}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0),
                                ),
                                Text(
                                  "KICKS",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "TODAY",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () => Get.toNamed(
                                "/homeWeb?url=${preferences.getString("fetal_view")}${preferences.getInt("weeks").toString()}"),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin:
                                  const EdgeInsets.only(right: 25.0, left: 5.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE5ED),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.pink)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Image.asset("assets/embryo.png")),
                                  Container(
                                    child: Text(
                                      "Fetal Growth",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(
                                "/homeWeb?url=${preferences.getString("affirmation_view")}${preferences.getInt("weeks").toString()}"),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin: const EdgeInsets.only(right: 25.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE5ED),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.pink)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Image.asset(
                                          "assets/affirmation.png")),
                                  Container(
                                    child: Text(
                                      "Affirmation",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(
                                "/homeWeb?url=${preferences.getString("physiology_view")}${preferences.getInt("weeks").toString()}"),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin: const EdgeInsets.only(right: 25.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE5ED),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.pink)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Image.asset(
                                    "assets/heart.png",
                                  )),
                                  Container(
                                    child: Text(
                                      "Prenatal Physiology",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(
                                "/homeWeb?url=${preferences.getString("physiology_view")}${preferences.getInt("weeks").toString()}"),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin: const EdgeInsets.only(right: 25.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE5ED),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.pink)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child:
                                          Image.asset("assets/psychology.jpg")),
                                  Container(
                                    child: Text(
                                      "Prenatal Physiology",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => Get.toNamed(
                                "/homeWeb?url=${preferences.getString("tips_view")}"),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: MediaQuery.of(context).size.height * 0.1,
                              margin: const EdgeInsets.only(right: 25.0),
                              padding: const EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  color: Color(0xFFFFE5ED),
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(color: Colors.pink)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: Image.asset("assets/tips.jpg")),
                                  Container(
                                    child: Text(
                                      "Useful Tips",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.black),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Get.toNamed(
                          "/homeWeb?url=${preferences.getString("tips_view")}"),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFE5ED),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.pink)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Image.asset("assets/mother.png")),
                            Container(
                              child: Text(
                                "Useful Tips",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(
                          "/homeWeb?url=${preferences.getString("food_view")}"),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFE5ED),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.pink)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(child: Image.asset("assets/fruit.png")),
                            Container(
                              child: Text(
                                "Prenatal Food Chart",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(
                          "/homeWeb?url=${preferences.getString("daily_diary_view")}"),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.1,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: Color(0xFFFFE5ED),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.pink)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Image.asset("assets/mum-pappa.png")),
                            Container(
                              child: Text(
                                "Daily Diary",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          _isLoading
              ? Center(child: Text("Loading"))
              : WebHomeView(
                  url: preferences.getString("home_view") +
                      preferences.getInt("weeks").toString()),
        ])),
      ),
    );
  }
}
