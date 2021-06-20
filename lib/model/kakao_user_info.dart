import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:kakao_flutter_sdk/all.dart';
part 'kakao_user_info.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class KakaoUserInfo {
  final String? kakaouser;

  KakaoUserInfo({
    required this.kakaouser,
  });

  factory KakaoUserInfo.fromJson(Map<String, dynamic> json) =>
      _$KakaoUserInfoFromJson(json);
  Map<String, dynamic> toJson() => _$KakaoUserInfoToJson(this);
}
