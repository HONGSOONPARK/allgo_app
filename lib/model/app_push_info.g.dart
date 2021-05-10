// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_push_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppPushInfo _$AppPushInfoFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppPushInfo', json, () {
    final val = AppPushInfo(
      id: $checkedConvert(json, 'id', (v) => v as int?),
      fcm_token: $checkedConvert(json, 'fcm_token', (v) => v as String?),
      push_yn: $checkedConvert(json, 'push_yn', (v) => v as String?),
      create_time: $checkedConvert(json, 'create_time',
          (v) => v == null ? null : DateTime.parse(v as String)),
    );
    return val;
  });
}

Map<String, dynamic> _$AppPushInfoToJson(AppPushInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fcm_token': instance.fcm_token,
      'push_yn': instance.push_yn,
      'create_time': instance.create_time?.toIso8601String(),
    };
