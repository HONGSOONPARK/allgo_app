// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppNotice _$AppNoticeFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppNotice', json, () {
    final val = AppNotice(
      no: $checkedConvert(json, 'no', (v) => v as int?),
      period: $checkedConvert(json, 'period', (v) => v as String?),
      earningLate: $checkedConvert(json, 'earningLate', (v) => v as int?),
      cost: $checkedConvert(json, 'cost', (v) => v as int?),
      startDate: $checkedConvert(json, 'startDate', (v) => v as String?),
      endDate: $checkedConvert(json, 'endDate', (v) => v as String?),
      updateDate: $checkedConvert(json, 'updateDate', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppNoticeToJson(AppNotice instance) => <String, dynamic>{
      'no': instance.no,
      'period': instance.period,
      'earningLate': instance.earningLate,
      'cost': instance.cost,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'updateDate': instance.updateDate,
    };
