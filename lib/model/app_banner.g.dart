// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_banner.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppBanner _$AppBannerFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppBanner', json, () {
    final val = AppBanner(
      no: $checkedConvert(json, 'no', (v) => v as int?),
      screen: $checkedConvert(json, 'screen', (v) => v as String?),
      code: $checkedConvert(json, 'code', (v) => v as String?),
      codeName: $checkedConvert(json, 'codeName', (v) => v as String?),
      explain: $checkedConvert(json, 'explain', (v) => v as String?),
      urlPath: $checkedConvert(json, 'urlPath', (v) => v as String?),
      useYn: $checkedConvert(json, 'useYn', (v) => v as String?),
      startDate: $checkedConvert(json, 'startDate', (v) => v as String?),
      endDate: $checkedConvert(json, 'endDate', (v) => v as String?),
      updateDate: $checkedConvert(json, 'updateDate', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppBannerToJson(AppBanner instance) => <String, dynamic>{
      'no': instance.no,
      'screen': instance.screen,
      'code': instance.code,
      'codeName': instance.codeName,
      'urlPath': instance.urlPath,
      'explain': instance.explain,
      'useYn': instance.useYn,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'updateDate': instance.updateDate,
    };
