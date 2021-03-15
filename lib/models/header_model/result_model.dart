import 'package:kidzit_app/models/header_model/user_data.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_result_model.dart';
import 'package:kidzit_app/models/otp/otp_login_result_model.dart';
part 'result_model.g.dart';

@JsonSerializable()
class ResultModel {
  var week, contraction, totalKicks;
  UserData userdata;

  ResultModel(this.week, this.contraction, this.totalKicks, this.userdata);

  factory ResultModel.fromJson(Map<String, dynamic> json) =>
      _$ResultModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$ResultModelToJson(this);
}
