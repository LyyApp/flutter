// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'VersionInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionInfo _$VersionInfoFromJson(Map<String, dynamic> json) {
  return VersionInfo(
    json['agreementVersion'] as String,
    json['versionCode'] as String,
    json['versionName'] as String,
    json['updateType'] as String,
    json['updateTitle'] as String,
    (json['updateDesc'] as List)?.map((e) => e as String)?.toList(),
    json['address'] as String,
  );
}

Map<String, dynamic> _$VersionInfoToJson(VersionInfo instance) =>
    <String, dynamic>{
      'agreementVersion': instance.agreementVersion,
      'versionCode': instance.versionCode,
      'versionName': instance.versionName,
      'updateType': instance.updateType,
      'updateTitle': instance.updateTitle,
      'updateDesc': instance.updateDesc,
      'address': instance.address,
    };
