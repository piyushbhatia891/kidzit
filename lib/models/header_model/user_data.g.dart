// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    json['id'] as String,
    json['name'] as String,
    json['mobile'] as String,
    json['ovulationDate'] as String,
    json['periodDate'] as String,
    json['type'] as String,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'mobile': instance.mobile,
      'ovulationDate': instance.ovulationDate,
      'periodDate': instance.periodDate,
      'type': instance.type,
    };
