import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/track_calc/track_calc_window.dart';
part 'track_calc_conceive_result_model.g.dart';

@JsonSerializable()
class TrackCalcConceiveResult {
  int weeks;

  TrackCalcConceiveResult(this.weeks);
  factory TrackCalcConceiveResult.fromJson(Map<String, dynamic> json) =>
      _$TrackCalcConceiveResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrackCalcConceiveResultToJson(this);
}
