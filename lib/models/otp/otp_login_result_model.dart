import 'package:json_annotation/json_annotation.dart';
part 'otp_login_result_model.g.dart';

@JsonSerializable()
class OtpLoginResultModel {
  bool ack;
  String code, message, userId;

  OtpLoginResultModel(this.ack, this.code, this.userId, this.message);
  factory OtpLoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$OtpLoginResultModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$OtpLoginResultModelToJson(this);
}
