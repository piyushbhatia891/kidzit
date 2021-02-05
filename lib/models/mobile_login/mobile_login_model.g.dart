// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileLoginModel _$MobileLoginModelFromJson(Map<String, dynamic> json) {
  return MobileLoginModel(
    json['result'] == null
        ? null
        : MobileLoginResultModel.fromJson(
            json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MobileLoginModelToJson(MobileLoginModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
