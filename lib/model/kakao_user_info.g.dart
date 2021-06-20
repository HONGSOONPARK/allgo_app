// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kakao_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KakaoUserInfo _$KakaoUserInfoFromJson(Map<String, dynamic> json) {
  return $checkedNew('KakaoUserInfo', json, () {
    final val = KakaoUserInfo(
      kakaouser: $checkedConvert(json, 'kakaouser', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$KakaoUserInfoToJson(KakaoUserInfo instance) =>
    <String, dynamic>{
      'kakaouser': instance.kakaouser,
    };
