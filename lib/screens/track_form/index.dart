import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:kidzit_app/shared/utils/hex.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/track_calc/track_calc_repository.dart';
import '../../data/url_configs/url_repository.dart';
import '../../controller/track_calc/track_calc.dart';

class TrackCyclePage extends StatefulWidget {
  TrackCyclePageState createState() => TrackCyclePageState();
}

class TrackCyclePageState extends State<TrackCyclePage> {
  DateTime selectedDate = DateTime.now();
  SharedPreferences _preferences;
  String userId;
  TrackCalc _trackCalc = Get.put(
      TrackCalc(
          trackCalcRepository: TrackCalcRepository(),
          urlConfigRepository: UrlConfigRepository()),
      permanent: true);
  @override
  void initState() {
    _initializePreferences();
    super.initState();
  }

  _initializePreferences() async {
    _preferences = await SharedPreferences.getInstance();
    if (_preferences.containsKey("userId")) {
      setState(() {
        userId = _preferences.getString("userId");
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F0CAE1"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Text(
            "Welcome to The Kidzit",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(
            height: 50.0,
          ),
          InkWell(
            onTap: () async {
              final dateTimePicked = await showDatePicker(
                context: context,
                helpText: "When did your last period start?",
                initialDate: selectedDate,
                firstDate: DateTime(selectedDate.year, selectedDate.month),
                lastDate: DateTime(2025),
              );
              if (dateTimePicked != null) {
                selectedDate = dateTimePicked;
                _trackCalc.calculateTrackCycle(
                    int.parse(userId),
                    selectedDate.year.toString() +
                        "-" +
                        selectedDate.month.toString() +
                        "-" +
                        selectedDate.day.toString(),
                    "cycle");
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFFC44B3),
                    Color(0xFFE32F6A),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  "Track My Cycle",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () async {
              final dateTimePicked = await showDatePicker(
                context: context,
                helpText: "When did your last period start?",
                initialDate: selectedDate,
                firstDate: DateTime(
                    selectedDate.year, selectedDate.month, selectedDate.day),
                lastDate: DateTime(2025),
              );
              if (dateTimePicked != null) {
                selectedDate = dateTimePicked;
                _trackCalc.calculateTrackCycle(
                    int.parse(userId),
                    selectedDate.year.toString() +
                        "-" +
                        selectedDate.month.toString() +
                        "-" +
                        selectedDate.day.toString(),
                    "conceive");
              }
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(colors: [
                    Color(0xFFFC44B3),
                    Color(0xFFE32F6A),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Center(
                child: Text(
                  "Trying to Conceive",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
