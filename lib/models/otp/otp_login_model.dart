import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/otp/otp_login_result_model.dart';
part 'otp_login_model.g.dart';

@JsonSerializable()
class OtpLoginModel {
  OtpLoginResultModel result;

  OtpLoginModel(this.result);
  factory OtpLoginModel.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OtpLoginModelToJson(this);
}
