import 'package:json_annotation/json_annotation.dart';
part 'app_push_info.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppPushInfo {
  final int? accountId;
  final String? fcmToken;
  final String? pushYn;
  final DateTime? updateDate;

  AppPushInfo(
      {required this.fcmToken,
      required this.pushYn,
      required this.updateDate,
      required this.accountId});

  factory AppPushInfo.fromJson(Map<String, dynamic> json) =>
      _$AppPushInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AppPushInfoToJson(this);
}
