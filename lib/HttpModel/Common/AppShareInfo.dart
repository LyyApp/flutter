import 'package:json_annotation/json_annotation.dart';

part 'AppShareInfo.g.dart';

@JsonSerializable()
class AppShareInfo{
  String url;
  String title;
  String summary;
  String logo;

  AppShareInfo(this.url,this.title,this.summary,this.logo);

  factory AppShareInfo.fromJson(Map<String,dynamic> json) => _$AppShareInfoFromJson(json);

  Map<String,dynamic> toJson() => _$AppShareInfoToJson(this);

  @override
  String toString() {
    // TODO: implement toString
    return '{url:$url,title:$title,summary:$summary,logo:$logo}';
  }
 }