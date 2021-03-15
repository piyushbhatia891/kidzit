import 'package:dio/dio.dart';
import 'package:kidzit_app/models/header_model/header_model.dart';
import 'package:kidzit_app/models/header_model/result_model.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_model.dart';
import 'package:kidzit_app/models/otp/otp_login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeaderProvider {
  final String baseUrl_get_home_data =
      "http://thekidzit.in/admin/index.php/API/getHomeData";

  Future<HeaderModel> getHomeData(String userId) async {
    try {
      Response response = await Dio().post("$baseUrl_get_home_data",
          data: {"userId": userId, "apiVersion": "1.0", "imei": "7038"});
      if (response.statusCode == 200) {
        return HeaderModel.fromJson(response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      return HeaderModel(false, "No Response", ResultModel(1, 1, 1, null));
    }
  }
}
