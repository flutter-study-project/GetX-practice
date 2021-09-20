import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_practice/src/controller/getx_service_test.dart';

class GetXServicePage extends GetView<GetxServiceTest> {
  const GetXServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("서비스"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Text(
                controller.count.value.toString(),
                style: TextStyle(fontSize: 40),
              );
            }),
            ElevatedButton(
                onPressed: () {
                  controller.increase();
                },
                child: Text("+"))
          ],
        ),
      ),
    );
  }
}
