import 'package:json_annotation/json_annotation.dart';
import './track_calc_conceive_result_model.dart';
part 'track_calc_conceive_model.g.dart';

@JsonSerializable()
class TrackCalcConceiveModel {
  bool ack;
  String message;
  TrackCalcConceiveResult result;
  String nextDate;

  TrackCalcConceiveModel(this.ack, this.message, this.result, this.nextDate);

  factory TrackCalcConceiveModel.fromJson(Map<String, dynamic> json) =>
      _$TrackCalcConceiveModelFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrackCalcConceiveModelToJson(this);
}
