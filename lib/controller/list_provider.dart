import 'dart:math';

import 'package:get/get_state_manager/get_state_manager.dart';

class ListProvider extends GetxController {
  List<String> list = ["1", "2", "3"];

  void addList(String item) {
    list.add(Random().nextInt(100).toString());
    update();
  }

  ListProvider() {
    print("Hello");
  }
}
