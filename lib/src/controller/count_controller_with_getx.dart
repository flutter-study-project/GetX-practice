import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CountConrollerWithGetX extends GetxController {
  static CountConrollerWithGetX get to => Get.find();
  int count = 0;

  void increase(id) {
    count++;
    update([id]);
  }

  void decrease(id) {
    count--;
    update([id]);
  }

  void putNumber(number, String id) {
    count = number;
    update([id]);
  }
}
