import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/models/url_config/url_config_data_model.dart';
import 'package:kidzit_app/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../data/track_calc/track_calc_repository.dart';
import '../../data/url_configs/url_repository.dart';

class TrackCalc extends GetxController {
  final TrackCalcRepository trackCalcRepository;
  final UrlConfigRepository urlConfigRepository;
  TrackCalc(
      {@required this.trackCalcRepository, @required this.urlConfigRepository});
  calculateTrackCycle(int userId, String date, String type) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    Get.dialog(AlertDialog(
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [CircularProgressIndicator(), Text("Calculating ")],
      ),
    ));
    if (type == "cycle") {
      trackCalcRepository
          .getTrackCalcForCycle(userId, date, type)
          .then((value) {
        if (value.ack) {
          preferences.setString("safe_date", jsonEncode(value.result.safeDate));
          preferences.setString(
              "fertile_window", jsonEncode(value.result.fertileWindow));
          preferences.setString(
              "ovulation_date", jsonEncode(value.result.ovulationDate));
          preferences.setString("post_ovulation_date",
              jsonEncode(value.result.postOvulationDate));
          preferences.setString("next_date", jsonEncode(value.nextDate));

          preferences.setBool(type, true);
          preferences.remove("conceive");
          Get.offNamed(Routes.PERIOD_DETAILS);
        } else {
          Get.back();
          _defaultDialog("Please Enter a valid Number");
        }
      }).catchError((error) {
        Get.back();
        _defaultDialog(error.toString());
      });
    } else {
      trackCalcRepository
          .getTrackCalcForConceive(userId, date, type)
          .then((value) {
        if (value.ack) {
          preferences.setInt("weeks", value.result.weeks);
          preferences.setBool(type, true);
          preferences.remove("cycle");
          getWebViewUrls();
        } else {
          Get.back();
          _defaultDialog("Please Enter a valid Number");
        }
      }).catchError((error) {
        Get.back();
        _defaultDialog(error.toString());
      });
    }
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

  getWebViewUrls() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    urlConfigRepository.getConfigs().then((value) {
      for (UrlConfigDataModel model in value.data) {
        preferences.setString("home_view", model.Home_View);
        preferences.setString("fetal_view", model.Fetal_View);
        preferences.setString("affirmation_view", model.Affirmation_View);
        preferences.setString("daily_diary_view", model.Daily_Diary_View);
        preferences.setString("physiology_view", model.Physiology_View);
        preferences.setString("tips_view", model.Tips_View);
        preferences.setString("prayers_view", model.Prayers_View);
        preferences.setString("food_view", model.Prayers_View);
      }
      preferences.setBool("conceive", true);
      Get.offNamed("/home?url=${preferences.getString("home_view")}");
    }).catchError((error) {
      Get.back();
      _defaultDialog(error.toString());
    });
  }
}
