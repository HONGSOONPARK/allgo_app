// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppBanner _$AppBannerFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppBanner', json, () {
    final val = AppBanner(
      seq: $checkedConvert(json, 'seq', (v) => v as int?),
      screen: $checkedConvert(json, 'screen', (v) => v as String?),
      code: $checkedConvert(json, 'code', (v) => v as String?),
      code_name: $checkedConvert(json, 'code_name', (v) => v as String?),
      explain: $checkedConvert(json, 'explain', (v) => v as String?),
      url_path: $checkedConvert(json, 'url_path', (v) => v as String?),
      use_yn: $checkedConvert(json, 'use_yn', (v) => v as String?),
      start_date: $checkedConvert(json, 'start_date', (v) => v as String?),
      end_date: $checkedConvert(json, 'end_date', (v) => v as String?),
      create_time: $checkedConvert(json, 'create_time', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppBannerToJson(AppBanner instance) => <String, dynamic>{
      'seq': instance.seq,
      'screen': instance.screen,
      'code': instance.code,
      'code_name': instance.code_name,
      'url_path': instance.url_path,
      'explain': instance.explain,
      'use_yn': instance.use_yn,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'create_time': instance.create_time,
    };
