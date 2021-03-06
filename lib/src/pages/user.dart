import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${Get.parameters["uid"]}"),
            Text("${Get.parameters["name"]}님 안녕하세요"),
            Text("${Get.parameters["age"]}살"),
            ElevatedButton(
                onPressed: () {
                  Get.offAll(() => Home());
                },
                child: Text('홈으로 이동'))
          ],
        ),
      ),
    );
  }
}
