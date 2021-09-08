import 'package:flutter/material.dart';
import 'package:getx_practice/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Provider",
          style: TextStyle(fontSize: 30),
        ),
        Consumer<CountConrollerWithProvider>(builder: (_, snapshot, child) {
          return Text(
            "${snapshot.count}",
            style: TextStyle(fontSize: 50),
          );
        }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Provider.of<CountConrollerWithProvider>(context, listen: false)
                      .increase();
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                )),
            ElevatedButton(
                onPressed: () {
                  Provider.of<CountConrollerWithProvider>(context, listen: false)
                      .decrease();
                },
                child: Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ))
          ],
        ),
      ],
    ));
  }
}
