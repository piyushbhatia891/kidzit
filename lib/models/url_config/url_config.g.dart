// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UrlConfig _$UrlConfigFromJson(Map<String, dynamic> json) {
  return UrlConfig(
    json['ack'] as bool,
    json['message'] as String,
    (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : UrlConfigDataModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$UrlConfigToJson(UrlConfig instance) => <String, dynamic>{
      'ack': instance.ack,
      'message': instance.message,
      'data': instance.data,
    };
