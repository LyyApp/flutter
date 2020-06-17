import 'package:json_annotation/json_annotation.dart';

part 'StartupAdLocInfo.g.dart';


@JsonSerializable()
class StartupAdLocInfo{
  String lid;

  String showType;

  StartupAdLocInfo(this.lid,this.showType);

//反序列化,factory *.fromJson(Map<String, dynamic> json) =>_$*FromJson(json);
  factory StartupAdLocInfo.fromJson(Map<String, dynamic> json) =>
      _$StartupAdLocInfoFromJson(json);

  //序列化,Map<String, dynamic> toJson() => _$*ToJson(this);
  Map<String, dynamic> toJson() => _$StartupAdLocInfoToJson(this);

  @override
  String toString() {
    return '{lid: $lid, showType: $showType}';
  }
}