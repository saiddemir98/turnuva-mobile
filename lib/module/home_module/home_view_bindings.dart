import 'package:get/get.dart';
import 'package:clean/module/home_module/home_view_model.dart';

class HomeViewBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeViewModel>(() => HomeViewModel());
  }
}
