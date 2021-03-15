import 'package:json_annotation/json_annotation.dart';
part 'user_data.g.dart';

@JsonSerializable()
class UserData {
  String id, name, mobile, ovulationDate, periodDate, type;

  UserData(this.id, this.name, this.mobile, this.ovulationDate, this.periodDate,
      this.type);

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
