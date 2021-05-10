import 'package:json_annotation/json_annotation.dart';
part 'app_info.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppInfo {
  final int? seq;
  final String? aos_package;
  final String? ios_package;
  final String? app_name;
  final String? aos_min_version;
  final String? aos_market_version;
  final String? ios_min_version;
  final String? ios_market_version;
  final String? create_time;

  AppInfo(
      {required this.seq,
      required this.aos_package,
      required this.ios_package,
      required this.app_name,
      required this.aos_min_version,
      required this.aos_market_version,
      required this.ios_min_version,
      required this.ios_market_version,
      required this.create_time});

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AppInfoToJson(this);
}
