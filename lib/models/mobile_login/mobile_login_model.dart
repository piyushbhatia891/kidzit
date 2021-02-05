import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_result_model.dart';
import 'package:kidzit_app/models/otp/otp_login_result_model.dart';
part 'mobile_login_model.g.dart';

@JsonSerializable()
class MobileLoginModel {
  MobileLoginResultModel result;

  MobileLoginModel(this.result);
  factory MobileLoginModel.fromJson(Map<String, dynamic> json) =>
      _$MobileLoginModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$MobileLoginModelToJson(this);
}
