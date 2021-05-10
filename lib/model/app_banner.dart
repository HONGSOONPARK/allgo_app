import 'package:json_annotation/json_annotation.dart';
part 'app_banner.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppBanner {
  final int? seq;
  final String? screen;
  final String? code;
  // ignore: non_constant_identifier_names
  final String? code_name;
  final String? url_path;
  final String? explain;
  final String? use_yn;
  final String? start_date;
  final String? end_date;
  final String? create_time;

  AppBanner(
      {required this.seq,
      required this.screen,
      required this.code,
      required this.code_name,
      required this.explain,
      required this.url_path,
      required this.use_yn,
      required this.start_date,
      required this.end_date,
      required this.create_time});

  factory AppBanner.fromJson(Map<String, dynamic> json) =>
      _$AppBannerFromJson(json);
  Map<String, dynamic> toJson() => _$AppBannerToJson(this);
}
