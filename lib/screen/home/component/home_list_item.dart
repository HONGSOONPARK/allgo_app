import 'package:allgo_app/model/ag_portfolio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeListItem extends StatelessWidget {
  final AgPortfolio? portfolio;
  const HomeListItem({Key? key, this.portfolio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print('test');
        },
        child: new Container(
          margin: EdgeInsets.only(top: 5, right: 5, bottom: 5, left: 5),
          padding: EdgeInsets.only(top: 5, right: 5, bottom: 5, left: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.blueGrey, width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.white30,
                blurRadius: 1,
                spreadRadius: 2,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Text("${portfolio!.stock_name}(${portfolio!.code})",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.0,
                          color: Colors.blue.shade800)),
                ],
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(5)),
                  Text(portfolio!.cur_price.toString(),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2.0,
                          color: Colors.black)),
                  Padding(padding: EdgeInsets.all(5)),
                  Text(
                    portfolio!.rate.toString() + '%',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 2.0,
                        color: portfolio!.rate! > 0
                            ? Colors.red.shade900
                            : portfolio!.rate! == 0
                                ? Colors.black45
                                : Colors.blue.shade400),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
