import 'package:kidzit_app/models/header_model/result_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/mobile_login/mobile_login_result_model.dart';
import 'package:kidzit_app/models/otp/otp_login_result_model.dart';
part 'header_model.g.dart';

@JsonSerializable()
class HeaderModel {
  bool ack;
  String message;
  ResultModel result;

  HeaderModel(this.ack, this.message, this.result);

  factory HeaderModel.fromJson(Map<String, dynamic> json) =>
      _$HeaderModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$HeaderModelToJson(this);
}
