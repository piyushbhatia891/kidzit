// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_calc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackCalcModel _$TrackCalcModelFromJson(Map<String, dynamic> json) {
  return TrackCalcModel(
    json['ack'] as bool,
    json['message'] as String,
    json['result'] == null
        ? null
        : TrackCalcResult.fromJson(json['result'] as Map<String, dynamic>),
    json['nextDate'] as String,
  );
}

Map<String, dynamic> _$TrackCalcModelToJson(TrackCalcModel instance) =>
    <String, dynamic>{
      'ack': instance.ack,
      'message': instance.message,
      'result': instance.result,
      'nextDate': instance.nextDate,
    };
