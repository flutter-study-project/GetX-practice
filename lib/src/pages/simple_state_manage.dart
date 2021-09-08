import 'package:flutter/material.dart';
import 'package:getx_practice/src/controller/count_controller_with_provider.dart';
import 'package:getx_practice/src/pages/state/with_getx.dart';
import 'package:getx_practice/src/pages/state/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("단순상태관리")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: WithGetX()),
              Expanded(
                  child: ChangeNotifierProvider<CountConrollerWithProvider>(
                create: (_) => CountConrollerWithProvider(),
                child: WithProvider(),
              )),
            ],
          ),
        ));
  }
}
