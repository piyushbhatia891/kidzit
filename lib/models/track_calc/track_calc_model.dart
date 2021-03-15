import 'package:json_annotation/json_annotation.dart';
import './track_calc_window.dart';
import './track_calc_result_model.dart';
part 'track_calc_model.g.dart';

@JsonSerializable()
class TrackCalcModel {
  bool ack;
  String message;
  TrackCalcResult result;
  String nextDate;

  TrackCalcModel(this.ack, this.message, this.result, this.nextDate);

  factory TrackCalcModel.fromJson(Map<String, dynamic> json) =>
      _$TrackCalcModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrackCalcModelToJson(this);
}
