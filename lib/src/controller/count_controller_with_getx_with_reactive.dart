import "package:get/get.dart";

enum NUM { FIRST, SECOND }

class User {
  String name;
  int age;

  User({required this.name, required this.age});
}

class CountControllerWithReactive extends GetxController {
  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  RxList<dynamic> list = [].obs;

  Rx<User> user = User(name: "개남", age: 27).obs;

  void increase() {
    count++;

    user.update((_user) {
      _user!.name = "개발하는 남자";
    });

    list.addIf(user.value.name == "개발하는 남자", "okay");
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한 번만 호출"));
    debounce(count, (_) => print("마지막 변경에 한 번만 호출"),
        time: Duration(seconds: 1)); // 검색과 같이 이벤트가 끝났을 때 사용자가 입력할 때마다

    interval(count, (_) => print("변경되고 있는 동안 1초마다 호출"), time: Duration(seconds: 1));

    super.onInit();
  }
}
