import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/src/binding/binding_page.dart';
import 'package:getx_practice/src/controller/count_controller_with_getx.dart';
import 'package:getx_practice/src/home.dart';
import 'package:getx_practice/src/pages/binding.dart';
import 'package:getx_practice/src/pages/getx_service.dart';
import 'package:getx_practice/src/pages/named/named_first.dart';
import 'package:getx_practice/src/pages/named/named_second.dart';
import 'package:getx_practice/src/pages/next.dart';
import 'package:getx_practice/src/pages/user.dart';

void main() {
  initService();
  runApp(MyApp());
}

void initService() {
  Get.put(CountConrollerWithGetX(), permanent: true);
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
      getPages: [
        GetPage(name: "/", page: () => Home(), transition: Transition.zoom),
        GetPage(
            name: "/first", page: () => NamedFirstPage(), transition: Transition.zoom),
        GetPage(
            name: "/second", page: () => NamedSecondPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(name: "/user/:uid", page: () => UserPage()),
        GetPage(
            name: "/binding", page: () => BindingPage(), binding: BindingPageBinding()),
        GetPage(name: "/get_service", page: () => GetXServicePage())
      ],
    );
  }
}
