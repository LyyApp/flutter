import 'package:json_annotation/json_annotation.dart';

part 'StaticHtmls.g.dart';

@JsonSerializable()
class StaticHtmls {
//"contact-us":"http://globalapp.pearmedia.cn/webview/v1/contact-us.jsp",
//"about-us":"http://globalapp.pearmedia.cn/webview/v1/aboutus.jsp",
//"copyright-declar":"http://globalapp.pearmedia.cn/webview/v1/copyright.jsp",
//"user-agreement":"http://globalapp.pearmedia.cn/webview/v1/user-agreement.jsp",
//"privacy-policy":"http://globalapp.pearmedia.cn/webview/v1/privacy-policy.jsp",
//"agreement-tips":"http://globalapp.pearmedia.cn/webview/v1/agreement-tips.jsp",
//"destroy-agreement":"http://globalapp.pearmedia.cn/webview/v1/destroy-agreement.jsp"

  @JsonKey(name: 'contact-us')
  String contactUs;
  @JsonKey(name: 'about-us')
  String aboutUs;
  @JsonKey(name: 'copyright-declar')
  String copyrightDeclar;
  @JsonKey(name: 'user-agreement')
  String userAgreement;
  @JsonKey(name: 'privacy-policy')
  String privacyPolicy;
  @JsonKey(name: 'agreement-tips')
  String agreementTips;
  @JsonKey(name: 'destroy-agreement')
  String destroyAgreement;

  StaticHtmls(
      this.contactUs,
      this.aboutUs,
      this.copyrightDeclar,
      this.userAgreement,
      this.privacyPolicy,
      this.agreementTips,
      this.destroyAgreement);

  factory StaticHtmls.fromJson(Map<String, dynamic> json) =>
      _$StaticHtmlsFromJson(json);

  Map<String, dynamic> toJson() => _$StaticHtmlsToJson(this);

  @override
  String toString() {
    return '{contactUs: $contactUs, aboutUs: $aboutUs,copyrightDeclar:$copyrightDeclar,userAgreement:$userAgreement,privacyPolicy:$privacyPolicy,agreementTips:$agreementTips,destroyAgreement:$destroyAgreement}';
  }
}
