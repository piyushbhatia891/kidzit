// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeaderModel _$HeaderModelFromJson(Map<String, dynamic> json) {
  return HeaderModel(
    json['ack'] as bool,
    json['message'] as String,
    json['result'] == null
        ? null
        : ResultModel.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HeaderModelToJson(HeaderModel instance) =>
    <String, dynamic>{
      'ack': instance.ack,
      'message': instance.message,
      'result': instance.result,
    };
