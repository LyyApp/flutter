import 'package:json_annotation/json_annotation.dart';

part 'ConfigInfo.g.dart';

@JsonSerializable()
class ConfigInfo {
  String aliAccessKeyId;
  String aliAccessKeySecret;
  String ugcImageEndpoint;
  String ugcImageBucket;
  String itunesId;
  String agreementTipTitle;


  ConfigInfo(
      this.aliAccessKeyId,
      this.aliAccessKeySecret,
      this.ugcImageEndpoint,
      this.ugcImageBucket,
      this.itunesId,
      this.agreementTipTitle);

  factory ConfigInfo.fromJson(Map<String,dynamic> json) => _$ConfigInfoFromJson(json);

  Map<String,dynamic> toJson() => _$ConfigInfoToJson(this);

  @override
  String toString() {
    return '{aliAccessKeyId:$aliAccessKeyId,aliAccessKeySecret:$aliAccessKeySecret,ugcImageEndpoint:$ugcImageEndpoint,'
        'ugcImageBucket:$ugcImageBucket,itunesId:$itunesId,agreementTipTitle:$agreementTipTitle}';
  }
}
