import 'package:get/get.dart';
import 'package:clean/module/base_module/base_view_model.dart';
import 'package:clean/module/home_module/home_view_model.dart';

class BaseViewBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseViewModel>(() => BaseViewModel());
  }
}
