import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/controller/dependency_controller.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            child: Text("initialize"),
            onPressed: () {
              Get.find<DependencyController>().increase();
            }),
      ),
    );
  }
}
