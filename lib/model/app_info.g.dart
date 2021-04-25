// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppInfo', json, () {
    final val = AppInfo(
      no: $checkedConvert(json, 'no', (v) => v as int?),
      package: $checkedConvert(json, 'package', (v) => v as String?),
      appName: $checkedConvert(json, 'appName', (v) => v as String?),
      aosMinVersion:
          $checkedConvert(json, 'aosMinVersion', (v) => v as String?),
      aosMarketVersion:
          $checkedConvert(json, 'aosMarketVersion', (v) => v as String?),
      iosMinVersion:
          $checkedConvert(json, 'iosMinVersion', (v) => v as String?),
      iosMarketVersion:
          $checkedConvert(json, 'iosMarketVersion', (v) => v as String?),
      updateDate: $checkedConvert(json, 'updateDate', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppInfoToJson(AppInfo instance) => <String, dynamic>{
      'no': instance.no,
      'package': instance.package,
      'appName': instance.appName,
      'aosMinVersion': instance.aosMinVersion,
      'aosMarketVersion': instance.aosMarketVersion,
      'iosMinVersion': instance.iosMinVersion,
      'iosMarketVersion': instance.iosMarketVersion,
      'updateDate': instance.updateDate,
    };
