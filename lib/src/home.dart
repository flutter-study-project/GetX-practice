import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/pages/dependencies/dependency_manage_page.dart';
import 'package:getx_practice/src/pages/normal/first.dart';
import 'package:getx_practice/src/pages/reactive_state_manage.dart';
import 'package:getx_practice/src/pages/simple_state_manage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('라우트 상태관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => FirstPage());
                },
                child: Text('일반적인 라우트')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/first");
                },
                child: Text('Named 라우트')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/next", arguments: User(age: 32, name: "name"));
                },
                child: Text('Arguments 전달')),
            ElevatedButton(
                onPressed: () {
                  Get.toNamed("/user/123?name=개남&age=22");
                },
                child: Text('동적 URL')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => SimpleStateManagePage());
                },
                child: Text('단순상태관리')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => ReactiveStateManagePage());
                },
                child: Text('반응형 상태관리')),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => DependencyManagePage());
                },
                child: Text('의존성 관리'))
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({required this.age, required this.name});
}
