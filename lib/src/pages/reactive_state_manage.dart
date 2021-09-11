import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/controller/count_controller_with_getx_with_reactive.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CountControllerWithReactive());

    return Scaffold(
        appBar: AppBar(title: Text("반응형 상태관리")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("GetX",
                  style: TextStyle(
                    fontSize: 30,
                  )),
              Obx(() {
                return Text(
                  "${Get.find<CountControllerWithReactive>().count.value}",
                  style: TextStyle(fontSize: 30),
                );
              }),
              ElevatedButton(
                  onPressed: () {
                    Get.find<CountControllerWithReactive>().increase();
                  },
                  child: Text("+")),
              ElevatedButton(
                  onPressed: () {
                    Get.find<CountControllerWithReactive>().putNumber(5);
                  },
                  child: Text("5로 변경"))
            ],
          ),
        ));
  }
}
