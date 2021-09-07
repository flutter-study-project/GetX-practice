import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedFirstPage extends StatelessWidget {
  const NamedFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Named First Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/second");
                },
                child: Text('두 번째 네임드 페이지로 이동'))
          ],
        ),
      ),
    );
  }
}
