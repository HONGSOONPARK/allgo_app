import 'package:json_annotation/json_annotation.dart';
part 'app_notice.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppNotice {
  final int? no;
  final String? period;
  final int? earningLate;
  final int? cost;
  final String? startDate;
  final String? endDate;
  final String? updateDate;

  AppNotice(
      {required this.no,
      required this.period,
      required this.earningLate,
      required this.cost,
      required this.startDate,
      required this.endDate,
      required this.updateDate});
  //

  factory AppNotice.fromJson(Map<String, dynamic> json) =>
      _$AppNoticeFromJson(json);
  Map<String, dynamic> toJson() => _$AppNoticeToJson(this);
}
