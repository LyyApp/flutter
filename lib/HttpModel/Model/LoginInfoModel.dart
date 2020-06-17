import 'package:my_flutter/HttpModel/Model/BaseModel.dart';

import 'package:json_annotation/json_annotation.dart';

import '../Common/LoadingInfo.dart';

part 'LoginInfoModel.g.dart';


@JsonSerializable()
class LoginInfoModel extends BaseModel{
  Map<String,dynamic> loadingInfo;
  Map<String,dynamic> startupAdLocInfo;
  Map<String,dynamic> staticHtmls;
  Map<String,dynamic> versionInfo;
  Map<String,dynamic> configInfo;
  Map<String,dynamic> appShareInfo;

  LoginInfoModel(this.loadingInfo,this.startupAdLocInfo,this.staticHtmls,this.versionInfo,
      this.configInfo,this.appShareInfo);

  factory LoginInfoModel.fromJson(Map<String,dynamic> json) => _$LoginInfoModelFromJson(json);

  Map<String,dynamic> toJson() => _$LoginInfoModelToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return '{loadingInfo:$loadingInfo,startupAdLocInfo:$startupAdLocInfo,staticHtmls:$staticHtmls,'
        'versionInfo:$versionInfo,configInfo:$configInfo,appShareInfo:$appShareInfo}';
  }
}

