// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ConfigInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfigInfo _$ConfigInfoFromJson(Map<String, dynamic> json) {
  return ConfigInfo(
    json['aliAccessKeyId'] as String,
    json['aliAccessKeySecret'] as String,
    json['ugcImageEndpoint'] as String,
    json['ugcImageBucket'] as String,
    json['itunesId'] as String,
    json['agreementTipTitle'] as String,
  );
}

Map<String, dynamic> _$ConfigInfoToJson(ConfigInfo instance) =>
    <String, dynamic>{
      'aliAccessKeyId': instance.aliAccessKeyId,
      'aliAccessKeySecret': instance.aliAccessKeySecret,
      'ugcImageEndpoint': instance.ugcImageEndpoint,
      'ugcImageBucket': instance.ugcImageBucket,
      'itunesId': instance.itunesId,
      'agreementTipTitle': instance.agreementTipTitle,
    };
