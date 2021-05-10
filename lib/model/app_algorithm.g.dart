// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_algorithm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppAlgorithm _$AppAlgorithmFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppAlgorithm', json, () {
    final val = AppAlgorithm(
      seq: $checkedConvert(json, 'seq', (v) => v as int?),
      code: $checkedConvert(json, 'code', (v) => v as String?),
      code_name: $checkedConvert(json, 'code_name', (v) => v as String?),
      explain: $checkedConvert(json, 'explain', (v) => v as String?),
      earning_late: $checkedConvert(json, 'earning_late', (v) => v as int?),
      earning_average:
          $checkedConvert(json, 'earning_average', (v) => v as int?),
      standard_deviation:
          $checkedConvert(json, 'standard_deviation', (v) => v as int?),
      holding_period:
          $checkedConvert(json, 'holding_period', (v) => v as String?),
      create_time: $checkedConvert(json, 'create_time', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppAlgorithmToJson(AppAlgorithm instance) =>
    <String, dynamic>{
      'seq': instance.seq,
      'code': instance.code,
      'code_name': instance.code_name,
      'explain': instance.explain,
      'earning_late': instance.earning_late,
      'earning_average': instance.earning_average,
      'standard_deviation': instance.standard_deviation,
      'holding_period': instance.holding_period,
      'create_time': instance.create_time,
    };
