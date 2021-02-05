// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpLoginModel _$OtpLoginModelFromJson(Map<String, dynamic> json) {
  return OtpLoginModel(
    json['result'] == null
        ? null
        : OtpLoginResultModel.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$OtpLoginModelToJson(OtpLoginModel instance) =>
    <String, dynamic>{
      'result': instance.result,
    };
