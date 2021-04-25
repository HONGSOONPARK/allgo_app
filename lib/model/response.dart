import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

// flutter pub run build_runner build
// flutter pub run build_runner watch

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class ResponseBase {
  final Map<String, dynamic?> data;
  final int? code;

  ResponseBase({
    required this.data,
    required this.code,
  });

  factory ResponseBase.fromJson(Map<String, dynamic> json) =>
      _$ResponseBaseFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseBaseToJson(this);

  // factory ResponseBase.fromJson(Map<dynamic, dynamic> json) {
  //   return ResponseBase(
  //     data: json['data'],
  //     code: json['code'],
  //   );
  // }
}
