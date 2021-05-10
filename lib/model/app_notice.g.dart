// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppNotice _$AppNoticeFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppNotice', json, () {
    final val = AppNotice(
      seq: $checkedConvert(json, 'seq', (v) => v as int?),
      period: $checkedConvert(json, 'period', (v) => v as String?),
      earning_late: $checkedConvert(json, 'earning_late', (v) => v as int?),
      cost: $checkedConvert(json, 'cost', (v) => v as int?),
      start_date: $checkedConvert(json, 'start_date', (v) => v as String?),
      end_date: $checkedConvert(json, 'end_date', (v) => v as String?),
      create_time: $checkedConvert(json, 'create_time', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppNoticeToJson(AppNotice instance) => <String, dynamic>{
      'seq': instance.seq,
      'period': instance.period,
      'earning_late': instance.earning_late,
      'cost': instance.cost,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'create_time': instance.create_time,
    };
