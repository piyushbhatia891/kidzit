import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kidzit_app/screens/calendar/index.dart';
import 'package:kidzit_app/screens/home/index.dart';
import 'package:kidzit_app/screens/profile/index.dart';
import 'package:kidzit_app/screens/tools/index.dart';

class WidgetsPage extends StatefulWidget {
  WidgetsPage({Key key}) : super(key: key);

  @override
  WidgetsPageState createState() => WidgetsPageState();
}

class WidgetsPageState extends State<WidgetsPage> {
  int selectedIndex = 0;
  final widgetOptions = [
    HomePage(),
    CalendarPage(),
    ToolsPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home,color: selectedIndex==0 ? Colors.pink: Colors.grey), title: Text('Home',style: TextStyle(
            color: selectedIndex==0 ? Colors.pink: Colors.grey
          ),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today,color: selectedIndex==1 ? Colors.pink: Colors.grey), title: Text('Calendar',style: TextStyle(
    color: selectedIndex==1 ? Colors.pink: Colors.grey
    ),)),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later,color: selectedIndex==2 ? Colors.pink: Colors.grey), title: Text('Tools',style: TextStyle(
    color: selectedIndex==2 ? Colors.pink: Colors.grey
    ))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,color: selectedIndex==3 ? Colors.pink: Colors.grey), title: Text('Person',style: TextStyle(
              color: selectedIndex==3 ? Colors.pink: Colors.grey
          ),)),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}