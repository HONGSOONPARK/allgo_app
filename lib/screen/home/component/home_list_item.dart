import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeListItem extends StatelessWidget {
  final AgPortfolio? portfolio;
  const HomeListItem({Key? key, this.portfolio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 0, bottom: 5, left: 0),
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text("${portfolio!.stock_name}(${portfolio!.code})"),
            ],
          ),
          Column(
            children: [
              Text(portfolio!.cur_price.toString()),
              Text(portfolio!.rate.toString()),
            ],
          )
        ],
      ),
    );
  }
}
