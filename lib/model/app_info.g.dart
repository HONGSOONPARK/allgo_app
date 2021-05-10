// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppInfo _$AppInfoFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppInfo', json, () {
    final val = AppInfo(
      seq: $checkedConvert(json, 'seq', (v) => v as int?),
      aos_package: $checkedConvert(json, 'aos_package', (v) => v as String?),
      ios_package: $checkedConvert(json, 'ios_package', (v) => v as String?),
      app_name: $checkedConvert(json, 'app_name', (v) => v as String?),
      aos_min_version:
          $checkedConvert(json, 'aos_min_version', (v) => v as String?),
      aos_market_version:
          $checkedConvert(json, 'aos_market_version', (v) => v as String?),
      ios_min_version:
          $checkedConvert(json, 'ios_min_version', (v) => v as String?),
      ios_market_version:
          $checkedConvert(json, 'ios_market_version', (v) => v as String?),
      create_time: $checkedConvert(json, 'create_time', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppInfoToJson(AppInfo instance) => <String, dynamic>{
      'seq': instance.seq,
      'aos_package': instance.aos_package,
      'ios_package': instance.ios_package,
      'app_name': instance.app_name,
      'aos_min_version': instance.aos_min_version,
      'aos_market_version': instance.aos_market_version,
      'ios_min_version': instance.ios_min_version,
      'ios_market_version': instance.ios_market_version,
      'create_time': instance.create_time,
    };
