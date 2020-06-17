// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AppShareInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppShareInfo _$AppShareInfoFromJson(Map<String, dynamic> json) {
  return AppShareInfo(
    json['url'] as String,
    json['title'] as String,
    json['summary'] as String,
    json['logo'] as String,
  );
}

Map<String, dynamic> _$AppShareInfoToJson(AppShareInfo instance) =>
    <String, dynamic>{
      'url': instance.url,
      'title': instance.title,
      'summary': instance.summary,
      'logo': instance.logo,
    };
