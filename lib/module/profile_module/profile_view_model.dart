import 'package:get/get.dart';
import 'package:clean/controller/list_provider.dart';

class ProfileViewModel extends GetxController {
  void addItem() {
    Get.find<ListProvider>().addList("Hello");
  }
}
