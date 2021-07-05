import 'package:json_annotation/json_annotation.dart';
part 'ag_portfolio.g.dart';

@JsonSerializable(includeIfNull: true, checked: true, explicitToJson: true)
class AgPortfolio {
  final int? id;
  final int? p_seq;
  final String? ag_type;
  final String? code;
  final int? holding_day;
  final String? stock_name;
  final int? average_buy_price;
  final int? average_sell_price;
  final String? first_buy_date;
  final String? last_sell_date;
  final String? status;
  final int? cur_price;
  final double? rate;

  AgPortfolio(
      {required this.id,
      required this.p_seq,
      required this.ag_type,
      required this.code,
      required this.holding_day,
      required this.stock_name,
      required this.average_buy_price,
      required this.average_sell_price,
      required this.first_buy_date,
      required this.last_sell_date,
      required this.status,
      required this.cur_price,
      required this.rate});

  factory AgPortfolio.fromJson(Map<String, dynamic> json) =>
      _$AgPortfolioFromJson(json);
  Map<String, dynamic> toJson() => _$AgPortfolioToJson(this);
}
