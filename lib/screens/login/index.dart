import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/controller/mobile_login_controller/mobile_login_controller.dart';
import 'package:kidzit_app/data/mobile_login/otp_repository.dart';
import 'package:kidzit_app/data/url_configs/url_repository.dart';

class LoginPage extends StatefulWidget {
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  MobileLoginController _otpController = Get.put(MobileLoginController(
      otpRepository: MobileLoginRepository(),
      urlConfigRepository: UrlConfigRepository()));
  TextEditingController _mobileNumber = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0CAE1),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              spreadRadius: 2.0)
                        ]),
                    child: Container(
                      padding: const EdgeInsets.all(30.0),
                      child: Image.asset("assets/mobile.png"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.4,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "OTP Verification",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                        ),
                        RichText(
                          text: TextSpan(
                              text: "We will send you ",
                              style: TextStyle(
                                  color: Color(0xFF8E8E8E), fontSize: 16.0),
                              children: [
                                TextSpan(
                                    text: "One Time Password",
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                  text: " on this mobile number ",
                                  style: TextStyle(
                                      color: Color(0xFF8E8E8E), fontSize: 16.0),
                                )
                              ]),
                        ),
                        Text(
                          "Enter Mobile Number",
                          style: TextStyle(
                              color: Color(0xFF8E8E8E), fontSize: 16.0),
                        ),
                        TextFormField(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              labelText: "Please Enter Mobile Number"),
                          controller: _mobileNumber,
                        ),
                        InkWell(
                          onTap: () {
                            if (_mobileNumber.text == "") {
                              Get.defaultDialog(
                                title: "Error",
                                textCancel: "Cancel",
                                content: Text("Please Enter a valid Number"),
                                onCancel: () {
                                  Get.back();
                                },
                              );
                            } else
                              _otpController
                                  .loginWithMobile(_mobileNumber.text);
                          },
                          child: Container(
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
                                "GET OTP",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
