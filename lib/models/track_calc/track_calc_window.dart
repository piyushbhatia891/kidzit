import 'package:json_annotation/json_annotation.dart';

part 'track_calc_window.g.dart';

@JsonSerializable()
class TrackCalcWindow {
  String From, To;

  TrackCalcWindow(this.From, this.To);
  factory TrackCalcWindow.fromJson(Map<String, dynamic> json) =>
      _$TrackCalcWindowFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$TrackCalcWindowToJson(this);
}
