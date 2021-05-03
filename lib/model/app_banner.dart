import 'package:json_annotation/json_annotation.dart';
part 'app_banner.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppBanner {
  final int? no;
  final String? screen;
  final String? code;
  final String? codeName;
  final String? urlPath;
  final String? explain;
  final String? useYn;
  final String? startDate;
  final String? endDate;
  final String? updateDate;

  AppBanner(
      {required this.no,
      required this.screen,
      required this.code,
      required this.codeName,
      required this.explain,
      required this.urlPath,
      required this.useYn,
      required this.startDate,
      required this.endDate,
      required this.updateDate});

  factory AppBanner.fromJson(Map<String, dynamic> json) =>
      _$AppBannerFromJson(json);
  Map<String, dynamic> toJson() => _$AppBannerToJson(this);
}
