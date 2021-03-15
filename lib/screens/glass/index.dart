import 'package:flutter/material.dart';
import 'package:kidzit_app/shared/routes.dart';

class GlassPage extends StatefulWidget {
  GlassPageState createState() => GlassPageState();
}

class GlassPageState extends State<GlassPage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
          appBar: AppBar(
              title: Text(
                "Glass Counter",
              ),
              centerTitle: false,
              actions: [
                IconButton(
                    icon: Icon(Icons.notification_important_outlined,
                        color: Colors.white),
                    onPressed: null)
              ]),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: const EdgeInsets.all(20.0),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/water_drop.png"),
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xFFbacFFC5E8)),
                        child: Text(
                          "Do not drink cold water immediately after hot drinks like tea or coffee",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ))
                    ],
                  )),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: MediaQuery.of(context).size.height * 0.2,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            border: Border.all(color: Colors.grey)),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.height * 0.2,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "/8000 ml",
                                        style: TextStyle(color: Colors.black))
                                  ],
                                  text: "1000",
                                  style: TextStyle(
                                      color: Colors.pink, fontSize: 18.0)),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Text(
                    "Confirm that you have just drunk water",
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height*0.15,
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10.0)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 10.0,
                            spreadRadius: 1.0)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(
                        color: Colors.grey,
                        thickness: 3.0,
                        indent: MediaQuery.of(context).size.width / 4,
                        endIndent: MediaQuery.of(context).size.width / 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "TODAY's",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/water_cup.png"),
                            Text(
                              "08:33 Pm",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "175 ml",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "YESTERDAY",
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset("assets/water_cup.png"),
                            Text(
                              "08:33 Pm",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              "175 ml",
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          )),
    );
  }
}
