// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_algorithm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppAlgorithm _$AppAlgorithmFromJson(Map<String, dynamic> json) {
  return $checkedNew('AppAlgorithm', json, () {
    final val = AppAlgorithm(
      no: $checkedConvert(json, 'no', (v) => v as int?),
      code: $checkedConvert(json, 'code', (v) => v as String?),
      codeName: $checkedConvert(json, 'codeName', (v) => v as String?),
      explain: $checkedConvert(json, 'explain', (v) => v as String?),
      earningLate: $checkedConvert(json, 'earningLate', (v) => v as int?),
      earningAverage: $checkedConvert(json, 'earningAverage', (v) => v as int?),
      standardDeviation:
          $checkedConvert(json, 'standardDeviation', (v) => v as int?),
      holdingPeriod:
          $checkedConvert(json, 'holdingPeriod', (v) => v as String?),
      updateDate: $checkedConvert(json, 'updateDate', (v) => v as String?),
    );
    return val;
  });
}

Map<String, dynamic> _$AppAlgorithmToJson(AppAlgorithm instance) =>
    <String, dynamic>{
      'no': instance.no,
      'code': instance.code,
      'codeName': instance.codeName,
      'explain': instance.explain,
      'earningLate': instance.earningLate,
      'earningAverage': instance.earningAverage,
      'standardDeviation': instance.standardDeviation,
      'holdingPeriod': instance.holdingPeriod,
      'updateDate': instance.updateDate,
    };
