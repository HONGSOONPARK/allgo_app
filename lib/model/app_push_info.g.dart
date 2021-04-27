// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_push_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppPushInfo _$AppPushInfoFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppPushInfo', json, () {
    final val = AppPushInfo(
      fcmToken: $checkedConvert(json, 'fcmToken', (v) => v as String?),
      pushYn: $checkedConvert(json, 'pushYn', (v) => v as String?),
      updateDate: $checkedConvert(json, 'updateDate',
          (v) => v == null ? null : DateTime.parse(v as String)),
      accountId: $checkedConvert(json, 'accountId', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppPushInfoToJson(AppPushInfo instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'fcmToken': instance.fcmToken,
      'pushYn': instance.pushYn,
      'updateDate': instance.updateDate?.toIso8601String(),
    };
