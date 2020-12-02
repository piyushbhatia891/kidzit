import 'dart:ui';

import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget{
  Widget build(BuildContext context){
    return DefaultTabController(length: 2, child: Scaffold(
      appBar:AppBar(
        title: Text("You are Pregnant For 2 Weeks"),
        actions: [
          IconButton(icon: Icon(Icons.notification_important_outlined), onPressed: (){})
        ],
        bottom: TabBar(
          indicatorColor: Colors.pink,
          tabs: [
            Tab(text: "CALENDAR"),
            Tab(text: "EVENTS",)
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.8,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFC44B3),Color(0xFFFFFFFF)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  )
              ),
              child: Center(child: Text("Coming Soon",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20.0),))),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.8,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFFFC44B3),Color(0xFFFFFFFF)],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter
                  )
              ),
              child: Center(child: Text("Coming Soon",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 20.0),))),
        ],
      ),
    ));
  }
}