import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/screens/home/widgets/curve_painter.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../controller/track_calc/track_calc.dart';
import '../../models/track_calc/track_calc_window.dart';

class PeriodDetailsPage extends StatefulWidget {
  PeriodDetailsPageState createState() => PeriodDetailsPageState();
}

class PeriodDetailsPageState extends State<PeriodDetailsPage> {
  TrackCalc controller = Get.find();
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            height: MediaQuery.of(context).size.height * 1.5,
            child: ListView(children: [
              Stack(
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
                                "2",
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
                                "2",
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
                                "2",
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
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
                Text(
                  "Safe Date",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
              ]),
              PeriodFigures(
                name: "Safe Date",
                type: "safe_date",
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
                Text(
                  "Ovulation Date",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
              ]),
              PeriodFigures(
                name: "Ovulation Date",
                type: "ovulation_date",
              ),
              Row(children: <Widget>[
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
                Text(
                  "Post Ovulation Date",
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                Expanded(
                  child: new Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: Divider(
                        color: Color(0xFFE32F6A),
                        height: 36,
                      )),
                ),
              ]),
              PeriodFigures(
                name: "Post Ovulation Date",
                type: "post_ovulation_date",
              ),
              Center(
                  child: InkWell(
                onTap: () async {
                  Get.offNamed(Routes.TRACK);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFFFC44B3),
                            Color(0xFFE32F6A),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                  child: Center(
                    child: Text(
                      "HomePage",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ))
            ])));
  }
}

class PeriodFigures extends StatefulWidget {
  final String name, type;
  PeriodFigures({this.name, this.type});
  PeriodFiguresState createState() => PeriodFiguresState();
}

class PeriodFiguresState extends State<PeriodFigures> {
  SharedPreferences _preferences;
  TrackCalcWindow val;
  bool _isLoading = true;
  void initState() {
    _initializePreferences();
  }

  _initializePreferences() async {
    _preferences = await SharedPreferences.getInstance();
    setState(() {
      val = TrackCalcWindow.fromJson(
          jsonDecode(_preferences.getString(widget.type)));
      _isLoading = false;
    });
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("From"),
              _isLoading ? Text("Loading") : Text(val.From)
            ],
          ),
          Column(
            children: [Text("To"), _isLoading ? Text("Loading") : Text(val.To)],
          )
        ],
      ),
    );
  }
}
