// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'track_calc_conceive_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackCalcConceiveModel _$TrackCalcConceiveModelFromJson(
    Map<String, dynamic> json) {
  return TrackCalcConceiveModel(
    json['ack'] as bool,
    json['message'] as String,
    json['result'] == null
        ? null
        : TrackCalcConceiveResult.fromJson(
            json['result'] as Map<String, dynamic>),
    json['nextDate'] as String,
  );
}

Map<String, dynamic> _$TrackCalcConceiveModelToJson(
        TrackCalcConceiveModel instance) =>
    <String, dynamic>{
      'ack': instance.ack,
      'message': instance.message,
      'result': instance.result,
      'nextDate': instance.nextDate,
    };
