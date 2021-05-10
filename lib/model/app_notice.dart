import 'package:json_annotation/json_annotation.dart';
part 'app_notice.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppNotice {
  final int? seq;
  final String? period;
  final int? earning_late;
  final int? cost;
  final String? start_date;
  final String? end_date;
  final String? create_time;

  AppNotice(
      {required this.seq,
      required this.period,
      required this.earning_late,
      required this.cost,
      required this.start_date,
      required this.end_date,
      required this.create_time});
  //

  factory AppNotice.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeFromJson(json);
  Map<String, dynamic> toJson() => _$AppNoticeToJson(this);
}
