import 'package:json_annotation/json_annotation.dart';
part 'app_push_info.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppPushInfo {
  final int? id;
  final String? fcm_token;
  final String? push_yn;
  final DateTime? create_time;

  AppPushInfo(
      {required this.id,
      required this.fcm_token,
      required this.push_yn,
      required this.create_time});

  factory AppPushInfo.fromJson(Map<String, dynamic> json) =>
      _$AppPushInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AppPushInfoToJson(this);
}
