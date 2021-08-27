import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/pages/normal/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SecondPage());
                },
                child: Text('두 번째 페이지로 이동'))
          ],
        ),
      ),
    );
  }
}
