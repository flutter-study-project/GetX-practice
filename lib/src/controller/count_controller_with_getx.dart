import 'package:get/get_state_manager/get_state_manager.dart';

class CountConrollerWithGetX extends GetxController {
  int count = 0;

  void increase(id) {
    count++;
    update([id]);
  }

  void decrease(id) {
    count--;
    update([id]);
  }
}
