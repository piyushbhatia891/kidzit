import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/controller/mobile_login_controller/mobile_login_controller.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginOtpPage extends StatefulWidget {
  LoginOtpPageState createState() => LoginOtpPageState();
}

class LoginOtpPageState extends State<LoginOtpPage> {
  MobileLoginController _otpController = Get.find();
  TextEditingController _otp = TextEditingController();
  SharedPreferences preferences;
  String mobile = "";
  void initState() {
    super.initState();
    initializePreferences();
  }

  void initializePreferences() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      mobile = preferences.containsKey("mobile")
          ? preferences.getString("mobile")
          : "Not Given";
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF0CAE1),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: SizedBox(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                height: MediaQuery.of(context).size.height / 6,
                margin: const EdgeInsets.symmetric(vertical: 20.0),
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
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset("assets/mobile2.png")),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.4,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                          text: "Enter the OTP sent to ",
                          style: TextStyle(
                              color: Color(0xFF8E8E8E), fontSize: 16.0),
                          children: [
                            TextSpan(
                              text: mobile,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0),
                            )
                          ]),
                    ),
                    TextFormField(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      keyboardType: TextInputType.number,
                      controller: _otp,
                      decoration: InputDecoration(
                        fillColor: Colors.black54,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                          text: "Didn't receive the OTP?",
                          style: TextStyle(
                              color: Color(0xFF8E8E8E), fontSize: 16.0),
                          children: [
                            TextSpan(
                              text: " RESEND OTP",
                              style: TextStyle(
                                  color: Color(0xFFE32F6A), fontSize: 16.0),
                            )
                          ]),
                    ),
                    InkWell(
                      onTap: () {
                        _otpController.loginWithOtp(_otp.text);
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
                            "VERIFY & PROCEED",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
        ));
  }
}
