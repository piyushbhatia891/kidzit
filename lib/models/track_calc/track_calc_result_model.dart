import 'package:json_annotation/json_annotation.dart';
import 'package:kidzit_app/models/track_calc/track_calc_window.dart';
part 'track_calc_result_model.g.dart';

@JsonSerializable()
class TrackCalcResult {
  TrackCalcWindow safeDate, fertileWindow, ovulationDate, postOvulationDate;

  TrackCalcResult(this.safeDate, this.fertileWindow, this.ovulationDate,
      this.postOvulationDate);
  factory TrackCalcResult.fromJson(Map<String, dynamic> json) =>
      _$TrackCalcResultFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrackCalcResultToJson(this);
}
