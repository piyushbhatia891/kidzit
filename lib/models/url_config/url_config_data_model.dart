import 'package:json_annotation/json_annotation.dart';
part 'url_config_data_model.g.dart';

@JsonSerializable()
class UrlConfigDataModel {
  String Home_View,
      Fetal_View,
      Daily_Diary_View,
      Prayers_View,
      Tips_View,
      Affirmation_View,
      Physiology_View;

  UrlConfigDataModel(
      this.Home_View,
      this.Fetal_View,
      this.Daily_Diary_View,
      this.Prayers_View,
      this.Tips_View,
      this.Affirmation_View,
      this.Physiology_View);

  factory UrlConfigDataModel.fromJson(Map<String, dynamic> json) =>
      _$UrlConfigDataModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UrlConfigDataModelToJson(this);
}
