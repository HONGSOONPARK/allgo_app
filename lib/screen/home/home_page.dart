import 'package:allgo_app/common/loading_overlay.dart';
import 'package:allgo_app/screen/home/component/home_list_item.dart';
import 'package:allgo_app/screen/home/home_controller.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return LoadingOveray(
              isLoading: controller.isLoading,
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CustomRadioButton(
                          elevation: 0,
                          unSelectedColor: Theme.of(context).canvasColor,
                          buttonLables: [
                            '전체',
                            '포트폴리오 A',
                            '포트폴리오 B',
                          ],
                          buttonValues: [
                            "ALL",
                            "A",
                            "B",
                          ],
                          defaultSelected: controller.portfolioType,
                          buttonTextStyle: ButtonTextStyle(
                              selectedColor: Colors.white,
                              unSelectedColor: Colors.black,
                              textStyle: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold)),
                          radioButtonValue: (value) {
                            print(value);
                            controller.changeList(value);
                          },
                          selectedColor: Color(0xff082649),
                          enableShape: true,
                          enableButtonWrap: true,
                          width: 100,
                          height: 30,
                        ),
                      )
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "※ 5분 단위로 갱신",
                          style: TextStyle(fontSize: 10),
                        ),
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 5, 0))
                      ],
                    ),
                  ),
                  Expanded(
                      child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 1.0,
                      mainAxisSpacing: 1,
                    ),
                    itemCount: controller.portfolioList.length,
                    itemBuilder: (cotext, index) => HomeListItem(
                      portfolio: controller.portfolioList[index],
                    ),
                  ))
                ],
              ),

              // ListView.builder(
              //   itemCount: controller.portfolioList.length,
              //   itemBuilder: (cotext, index) =>
              //       HomeListItem(portfolio: controller.portfolioList[index]),
              // ),
            );
          },
        ),
      ),
    );
  }
}
