import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profile"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        //padding: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFFC44B3), Color(0xFFFFFFFF)],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter)),
        child: ListView(
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.2,
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                //margin: const EdgeInsets.only(bottom: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black54,
                          blurRadius: 15.0,
                          spreadRadius: 2.0)
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/avatar.png"))),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              //height: MediaQuery.of(context).size.height*0.1,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 2.0)
                ],
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Profile & Account",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Edit your profile",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              //height: MediaQuery.of(context).size.height * 0.1,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 2.0)
                ],
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Push Notifications",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Set Up Push Notifications",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              //height: MediaQuery.of(context).size.height * 0.1,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 2.0)
                ],
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FAQs",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Frequently Asked Questions",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              //height: MediaQuery.of(context).size.height * 0.1,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 15.0,
                      spreadRadius: 2.0)
                ],
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      margin: const EdgeInsets.only(right: 10.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pink,
                      ),
                      child: Icon(Icons.person, color: Colors.white),
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Logout",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Want to Logout",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.pink)),
                      child: IconButton(
                        icon: Icon(Icons.logout),
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () async {
                          Get.defaultDialog(
                              title: "Logout!",
                              content: Text("Are you sure you want to Logout?"),
                              onCancel: () {
                                Get.back();
                              },
                              confirmTextColor: Colors.white,
                              onConfirm: () async {
                                SharedPreferences _preferences =
                                    await SharedPreferences.getInstance();
                                _preferences.clear().then((value) {
                                  Get.offAllNamed(Routes.LOGIN);
                                });
                              });
                        },
                        color: Colors.pink,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
