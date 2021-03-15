// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_calc_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackCalcResult _$TrackCalcResultFromJson(Map<String, dynamic> json) {
  return TrackCalcResult(
    json['safeDate'] == null
        ? null
        : TrackCalcWindow.fromJson(json['safeDate'] as Map<String, dynamic>),
    json['fertileWindow'] == null
        ? null
        : TrackCalcWindow.fromJson(
            json['fertileWindow'] as Map<String, dynamic>),
    json['ovulationDate'] == null
        ? null
        : TrackCalcWindow.fromJson(
            json['ovulationDate'] as Map<String, dynamic>),
    json['postOvulationDate'] == null
        ? null
        : TrackCalcWindow.fromJson(
            json['postOvulationDate'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrackCalcResultToJson(TrackCalcResult instance) =>
    <String, dynamic>{
      'safeDate': instance.safeDate,
      'fertileWindow': instance.fertileWindow,
      'ovulationDate': instance.ovulationDate,
      'postOvulationDate': instance.postOvulationDate,
    };
