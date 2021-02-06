import 'package:dio/dio.dart';
import 'package:kidzit_app/models/url_config/url_config.dart';

class UrlConfigProvider {
  final String baseUrl_url_configs =
      "http://d4academy.com/TheKidsZit/index.php/API/webPageUrls";

  Future<UrlConfig> getConfigUrls() async {
    try {
      Response response = await Dio().get("$baseUrl_url_configs");
      if (response.statusCode == 200) {
        return UrlConfig.fromJson(response.data); //Return decoded response
      } else {
        throw Exception('Failed to load weather');
      }
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }
}
