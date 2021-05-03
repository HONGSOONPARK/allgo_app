import 'package:json_annotation/json_annotation.dart';
part 'app_algorithm.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppAlgorithm {
  final int? no;
  final String? code;
  final String? codeName;
  final String? explain;
  final int? earningLate;
  final int? earningAverage;
  final int? standardDeviation;
  final String? holdingPeriod;
  final String? updateDate;

  AppAlgorithm(
      {required this.no,
      required this.code,
      required this.codeName,
      required this.explain,
      required this.earningLate,
      required this.earningAverage,
      required this.standardDeviation,
      required this.holdingPeriod,
      required this.updateDate});

  factory AppAlgorithm.fromJson(Map<String, dynamic> json) =>
      _$AppAlgorithmFromJson(json);
  Map<String, dynamic> toJson() => _$AppAlgorithmToJson(this);
}
