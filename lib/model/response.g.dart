// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseBase _$ResponseBaseFromJson(Map<String, dynamic> json) {
  return $checkedNew('ResponseBase', json, () {
    final val = ResponseBase(
      data: $checkedConvert(json, 'data', (v) => v as Map<String, dynamic>),
      code: $checkedConvert(json, 'code', (v) => v as int?),
    );
    return val;
  });
}

Map<String, dynamic> _$ResponseBaseToJson(ResponseBase instance) =>
    <String, dynamic>{
      'data': instance.data,
      'code': instance.code,
    };
