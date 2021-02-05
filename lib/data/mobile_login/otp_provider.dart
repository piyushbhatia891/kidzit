import 'package:dio/dio.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_model.dart';
import 'package:kidzit_app/models/otp/otp_login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MobileLoginProvider {
  final String baseUrl_login_with_mobile =
      "http://d4academy.com/TheKidsZit/index.php/API/sendOtp";
  final String baseUrl_login_with_otp =
      "http://d4academy.com/TheKidsZit/index.php/API/verifyOtp";

  Future<MobileLoginModel> loginWithMobile(String mobile) async {
    try {
      Response response = await Dio().post("$baseUrl_login_with_mobile", data: {
        'phone': mobile,
        'fcmToken': '',
        "apiVersion": "1.0",
        "name": "testing"
      });
      if (response.statusCode == 200) {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.setString("mobile", mobile);
        return MobileLoginModel.fromJson(
            response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<OtpLoginModel> loginWithOtp(String mobile, String otp) async {
    try {
      Response response = await Dio().post("$baseUrl_login_with_otp",
          data: {'phone': mobile, 'otp': otp, "apiVersion": "1.0", 'imei': ''});
      if (response.statusCode == 200) {
        return OtpLoginModel.fromJson(response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
