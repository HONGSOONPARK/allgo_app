import 'package:json_annotation/json_annotation.dart';
part 'app_algorithm.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AppAlgorithm {
  final int? seq;
  final String? code;
  final String? code_name;
  final String? explain;
  final int? earning_late;
  final int? earning_average;
  final int? standard_deviation;
  final String? holding_period;
  final String? create_time;

  AppAlgorithm(
      {required this.seq,
      required this.code,
      required this.code_name,
      required this.explain,
      required this.earning_late,
      required this.earning_average,
      required this.standard_deviation,
      required this.holding_period,
      required this.create_time});

  factory AppAlgorithm.fromJson(Map<String, dynamic> json) =>
      _$AppAlgorithmFromJson(json);
  Map<String, dynamic> toJson() => _$AppAlgorithmToJson(this);
}
