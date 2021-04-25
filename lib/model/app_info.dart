import 'package:json_annotation/json_annotation.dart';
part 'app_info.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppInfo {
  final int? no;
  final String? package;
  final String? appName;
  final String? aosMinVersion;
  final String? aosMarketVersion;
  final String? iosMinVersion;
  final String? iosMarketVersion;
  final String? updateDate;

  AppInfo(
      {required this.no,
      required this.package,
      required this.appName,
      required this.aosMinVersion,
      required this.aosMarketVersion,
      required this.iosMinVersion,
      required this.iosMarketVersion,
      required this.updateDate});

  // factory AppInfo.fromJson(Map<dynamic, dynamic> json) {
  //   return AppInfo(
  //     no: json['no'],
  //     package: json['package'],
  //     appName: json['appName'],
  //     aosMinVersion: json['aosMinVersion'],
  //     aosMarketVersion: json['aosMarketVersion'],
  //     iosMinVersion: json['iosMinVersion'],
  //     iosMarketVersion: json['iosMarketVersion'],
  //     updateDate: json['updateDate'],
  //   );
  // }

  //

  factory AppInfo.fromJson(Map<String, dynamic> json) =>
      _$AppInfoFromJson(json);
  Map<String, dynamic> toJson() => _$AppInfoToJson(this);
}
