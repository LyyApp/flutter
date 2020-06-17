import 'package:json_annotation/json_annotation.dart';

part 'VersionInfo.g.dart';

@JsonSerializable()
class VersionInfo {
//  "agreementVersion":"5",
//
//  "versionCode": "999",
//  "versionName": "9.9.9",
//  "updateType": "0",
//  "updateTitle": "已发布到最新版本",
//  "updateDesc": [
//  "0.1.4对更多机型操作体验优化","对网络请求和数据加载优化","更多细节调优001"],
//  "address": "http://page.pearmedia.cn/resource/pkg/apk/LiGlobal0.1.4_Test.apk"
  String agreementVersion;
  String versionCode;
  String versionName;
  String updateType;
  String updateTitle;
  List<String> updateDesc;
  String address;

  VersionInfo(this.agreementVersion, this.versionCode, this.versionName,
      this.updateType, this.updateTitle, this.updateDesc, this.address);


  factory VersionInfo.fromJson(Map<String, dynamic> json) =>
      _$VersionInfoFromJson(json);

  Map<String,dynamic> toJson() => _$VersionInfoToJson(this);

  @override
  String toString() {
    return '{agreementVersion:$agreementVersion,versionCode:$versionCode,versionName:$versionName'
        'updateType:$updateType,updateTitle:$updateTitle,updateDesc:$updateDesc,address:$address}';
  }
}
