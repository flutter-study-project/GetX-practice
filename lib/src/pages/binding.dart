import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/controller/count_controller_with_getx.dart';

class BindingPage extends GetView<CountConrollerWithGetX> {
  const BindingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("바인딩"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CountConrollerWithGetX>(
              id: "first",
              builder: (_) {
                return Text(
                  "${_.count.toString()}",
                  style: TextStyle(fontSize: 40),
                );
              }),
          ElevatedButton(
              onPressed: () {
                controller.increase("first");
              },
              child: Text('+')),
        ],
      )),
    );
  }
}
