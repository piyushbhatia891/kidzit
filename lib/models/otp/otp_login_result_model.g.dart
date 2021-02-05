// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_login_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpLoginResultModel _$OtpLoginResultModelFromJson(Map<String, dynamic> json) {
  return OtpLoginResultModel(
    json['ack'] as bool,
    json['code'] as String,
    json['userId'] as String,
    json['message'] as String,
  );
}

Map<String, dynamic> _$OtpLoginResultModelToJson(
        OtpLoginResultModel instance) =>
    <String, dynamic>{
      'ack': instance.ack,
      'code': instance.code,
      'message': instance.message,
      'userId': instance.userId,
    };
