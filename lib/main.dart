import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/home.dart';
import 'package:getx_practice/src/pages/named/named_first.dart';
import 'package:getx_practice/src/pages/named/named_second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Home(),
      initialRoute: "/",
      // routes: {
      //   "/": (context) => Home(),
      //   "/first": (context) => NamedFirstPage(),
      //   "/second": (context) => NamedSecondPage()
      // },
      getPages: [
        GetPage(name: "/", page: () => Home()),
        GetPage(name: "/first", page: () => NamedFirstPage()),
        GetPage(name: "/second", page: () => NamedSecondPage())
      ],
    );
  }
}
