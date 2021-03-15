// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return ResultModel(
    json['week'] as int,
    json['contraction'] as int,
    json['totalKicks'] as int,
    json['userdata'] == null
        ? null
        : UserData.fromJson(json['userdata'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ResultModelToJson(ResultModel instance) =>
    <String, dynamic>{
      'week': instance.week,
      'userdata': instance.userdata,
    };
