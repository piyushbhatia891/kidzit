import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/url_config/url_config_data_model.dart';
part 'url_config.g.dart';

@JsonSerializable()
class UrlConfig {
  bool ack;
  String message;
  List<UrlConfigDataModel> data;

  UrlConfig(this.ack, this.message, this.data);

  factory UrlConfig.fromJson(Map<String, dynamic> json) =>
      _$UrlConfigFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UrlConfigToJson(this);
}
