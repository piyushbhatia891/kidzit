import 'package:dio/dio.dart';
import 'package:kidzit_app/models/track_calc/track_calc_conceive_model.dart';
import '../../models/track_calc/track_calc_model.dart';

class TrackCalcProvider {
  final String baseUrl_url_configs =
      "http://thekidzit.in/admin/index.php/API/getCycleCal";

  Future<TrackCalcModel> getTrackCalculationForCycle(
      int userId, String date, String type) async {
    try {
      Response response = await Dio().post("$baseUrl_url_configs", data: {
        "apiVersion": "1.0",
        "userId": userId,
        "date": date,
        "type": type,
        "imei": "7038"
      });
      if (response.statusCode == 200) {
        return TrackCalcModel.fromJson(response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  Future<TrackCalcConceiveModel> getTrackCalculationForConceive(
      int userId, String date, String type) async {
    try {
      Response response = await Dio().post("$baseUrl_url_configs", data: {
        "apiVersion": "1.0",
        "userId": userId,
        "date": date,
        "type": type,
        "imei": "7038"
      });
      if (response.statusCode == 200) {
        return TrackCalcConceiveModel.fromJson(
            response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
