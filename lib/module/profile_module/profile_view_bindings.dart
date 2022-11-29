import 'package:get/get.dart';
import 'package:clean/module/profile_module/profile_view_model.dart';

class ProfileViewBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileViewModel>(() => ProfileViewModel());
  }
}
