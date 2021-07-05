// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ag_portfolio.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgPortfolio _$AgPortfolioFromJson(Map<String, dynamic> json) {
  return $checkedNew('AgPortfolio', json, () {
    final val = AgPortfolio(
      id: $checkedConvert(json, 'id', (v) => v as int?),
      p_seq: $checkedConvert(json, 'p_seq', (v) => v as int?),
      ag_type: $checkedConvert(json, 'ag_type', (v) => v as String?),
      code: $checkedConvert(json, 'code', (v) => v as String?),
      holding_day: $checkedConvert(json, 'holding_day', (v) => v as int?),
      stock_name: $checkedConvert(json, 'stock_name', (v) => v as String?),
      average_buy_price:
          $checkedConvert(json, 'average_buy_price', (v) => v as int?),
      average_sell_price:
          $checkedConvert(json, 'average_sell_price', (v) => v as int?),
      first_buy_date:
          $checkedConvert(json, 'first_buy_date', (v) => v as String?),
      last_sell_date:
          $checkedConvert(json, 'last_sell_date', (v) => v as String?),
      status: $checkedConvert(json, 'status', (v) => v as String?),
      cur_price: $checkedConvert(json, 'cur_price', (v) => v as int?),
      rate: $checkedConvert(json, 'rate', (v) => (v as num?)?.toDouble()),
    );
    return val;
  });
}

Map<String, dynamic> _$AgPortfolioToJson(AgPortfolio instance) =>
    <String, dynamic>{
      'id': instance.id,
      'p_seq': instance.p_seq,
      'ag_type': instance.ag_type,
      'code': instance.code,
      'holding_day': instance.holding_day,
      'stock_name': instance.stock_name,
      'average_buy_price': instance.average_buy_price,
      'average_sell_price': instance.average_sell_price,
      'first_buy_date': instance.first_buy_date,
      'last_sell_date': instance.last_sell_date,
      'status': instance.status,
      'cur_price': instance.cur_price,
      'rate': instance.rate,
    };
