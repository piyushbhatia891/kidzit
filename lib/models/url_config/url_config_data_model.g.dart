// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_config_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UrlConfigDataModel _$UrlConfigDataModelFromJson(Map<String, dynamic> json) {
  return UrlConfigDataModel(
    json['Home_View'] as String,
    json['Fetal_View'] as String,
    json['Daily_Diary_View'] as String,
    json['Prayers_View'] as String,
    json['Tips_View'] as String,
    json['Affirmation_View'] as String,
    json['Physiology_View'] as String,
  );
}

Map<String, dynamic> _$UrlConfigDataModelToJson(UrlConfigDataModel instance) =>
    <String, dynamic>{
      'Home_View': instance.Home_View,
      'Fetal_View': instance.Fetal_View,
      'Daily_Diary_View': instance.Daily_Diary_View,
      'Prayers_View': instance.Prayers_View,
      'Tips_View': instance.Tips_View,
      'Affirmation_View': instance.Affirmation_View,
      'Physiology_View': instance.Physiology_View,
    };
