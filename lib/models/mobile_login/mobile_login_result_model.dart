import 'package:json_annotation/json_annotation.dart';
part 'mobile_login_result_model.g.dart';

@JsonSerializable()
class MobileLoginResultModel {
  bool ack;

  MobileLoginResultModel(this.ack);
  factory MobileLoginResultModel.fromJson(Map<String, dynamic> json) =>
      _$MobileLoginResultModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$MobileLoginResultModelToJson(this);
}
