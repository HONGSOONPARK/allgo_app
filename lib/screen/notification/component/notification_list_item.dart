import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationListItem extends StatelessWidget {
  final AgPortfolio? portfolio;
  const NotificationListItem({Key? key, this.portfolio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            blurRadius: 1,
            spreadRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    portfolio!.stock_name!,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    portfolio!.first_buy_date.toString(),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black38,
                    ),
                  ),
                ],
              )),
            ],
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
