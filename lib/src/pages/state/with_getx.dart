import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  WithGetX({Key? key}) : super(key: key);
  CountConrollerWithGetX _countConrollerWithGetX = Get.put(CountConrollerWithGetX());

  @override
  Widget build(BuildContext context) {
    // 1번 방법
    Get.put(CountConrollerWithGetX());

    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "GetX",
          style: TextStyle(fontSize: 30),
        ),
        GetBuilder<CountConrollerWithGetX>(
            id: "first",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            }),
        GetBuilder<CountConrollerWithGetX>(
            id: "second",
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // 1 번 방법
                  // Get.find<CountConrollerWithGetX>().increase();
                  //
                  _countConrollerWithGetX.increase("first");
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.find<CountConrollerWithGetX>().decrease("first");
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  // 1 번 방법
                  // Get.find<CountConrollerWithGetX>().increase();
                  //
                  _countConrollerWithGetX.increase("second");
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Get.find<CountConrollerWithGetX>().decrease("second");
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ],
    ));
  }
}
