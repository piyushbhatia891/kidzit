import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/data/mobile_login/otp_repository.dart';
import 'package:kidzit_app/data/url_configs/url_repository.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MobileLoginController extends GetxController {
  final MobileLoginRepository otpRepository;
  final UrlConfigRepository urlConfigRepository;
  var mobileNumber = "".obs;
  MobileLoginController(
      {@required this.otpRepository, @required this.urlConfigRepository});
  loginWithMobile(String mobile) {
    Get.dialog(AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [CircularProgressIndicator(), Text("Logging In")],
      ),
    ));
    otpRepository.loginWithMobile(mobile).then((value) {
      if (value.result.ack)
        Get.offNamed(Routes.LOGIN_OTP);
      else {
        Get.back();
        _defaultDialog("Please Enter a valid Number");
      }
    }).catchError((error) {
      Get.back();
      _defaultDialog(error.toString());
    });
  }

  void _defaultDialog(String message) {
    Get.defaultDialog(
      title: "Error",
      textCancel: "Ok",
      content: Text(message),
      onCancel: () {
        Get.back();
      },
    );
  }

  loginWithOtp(String otp) async {
    SharedPreferences prefereences = await SharedPreferences.getInstance();
    Get.dialog(AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [CircularProgressIndicator(), Text("Logging In With OTP")],
      ),
    ));
    otpRepository
        .loginWithOtp(prefereences.getString("mobile"), otp)
        .then((value) async {
      if (value.result.ack) {
        prefereences.setString("userId", value.result.userId);
        Get.offAllNamed(Routes.TRACK);
      } else {
        _defaultDialog("Please Enter a valid Otp");
      }
    });
  }
}
