import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/models/tool_model.dart';
import 'package:kidzit_app/screens/home/widgets/curve_painter.dart';
import 'package:kidzit_app/shared/routes.dart';

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<ToolModel> model = [
    new ToolModel(
        imageUrl: "assets/embryo.png",
        type: "Fetal Growth",
        routeUrl:
            "/homeWeb?url=http://www.d4academy.com/TheKidsZit/fetalwebview"),
    new ToolModel(
        imageUrl: "assets/affirmation.png",
        type: "Affirmation",
        routeUrl:
            "/homeWeb?url=http://www.d4academy.com/TheKidsZit/fetalwebview"),
    new ToolModel(
        imageUrl: "assets/heart.png",
        type: "Prenatal Physiology",
        routeUrl: Routes.HOME_WEB),
    new ToolModel(
        imageUrl: "assets/mother.png",
        type: "Mother’s Body",
        routeUrl: Routes.HOME_WEB),
    new ToolModel(
        imageUrl: "assets/fruit.png",
        type: "Mother’s Meals",
        routeUrl: Routes.HOME_WEB),
    new ToolModel(
        imageUrl: "assets/mum-pappa.png",
        type: "Father cares Mother’s",
        routeUrl: Routes.HOME_WEB),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.0),
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
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.only(
                left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 0.80),
                itemCount: model.length,
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: () => Get.toNamed(model[index].routeUrl),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5.0, vertical: 20.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Color(0xFFFFE5ED),
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.pink)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: Image.asset(model[index].imageUrl)),
                          Container(
                            child: Text(
                              model[index].type,
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
