// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginInfoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginInfoModel _$LoginInfoModelFromJson(Map<String, dynamic> json) {
  return LoginInfoModel(
    json['loadingInfo'] as Map<String, dynamic>,
    json['startupAdLocInfo'] as Map<String, dynamic>,
    json['staticHtmls'] as Map<String, dynamic>,
    json['versionInfo'] as Map<String, dynamic>,
    json['configInfo'] as Map<String, dynamic>,
    json['appShareInfo'] as Map<String, dynamic>,
  )
    ..resultCode = json['resultCode'] as String
    ..resultMsg = json['resultMsg'] as String
    ..reqId = json['reqId'] as String
    ..systemTime = json['systemTime'] as String;
}

Map<String, dynamic> _$LoginInfoModelToJson(LoginInfoModel instance) =>
    <String, dynamic>{
      'resultCode': instance.resultCode,
      'resultMsg': instance.resultMsg,
      'reqId': instance.reqId,
      'systemTime': instance.systemTime,
      'loadingInfo': instance.loadingInfo,
      'startupAdLocInfo': instance.startupAdLocInfo,
      'staticHtmls': instance.staticHtmls,
      'versionInfo': instance.versionInfo,
      'configInfo': instance.configInfo,
      'appShareInfo': instance.appShareInfo,
    };
