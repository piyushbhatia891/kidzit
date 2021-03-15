import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kidzit_app/data/header/header_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/header_model/header_model.dart';

class HeaderController extends GetxController {
  List<HeaderModel> list = List<HeaderModel>().obs;
  final HeaderRepository headerRepository;
  HeaderController({@required this.headerRepository});
  void onInit() async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    HeaderModel headerModel =
        await headerRepository.getHomeData(_preferences.getString("userId"));
    list.add(headerModel);
    super.onInit();
  }
}
