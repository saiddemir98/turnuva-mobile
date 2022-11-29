import 'package:get/route_manager.dart';
import 'package:clean/module/base_module/base_view.dart';
import 'package:clean/module/base_module/base_view_bindings.dart';
import 'package:clean/module/home_module/home_view_bindings.dart';
import 'package:clean/module/profile_module/profile_view_bindings.dart';
import 'package:clean/router/routers.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.BASESCREEN,
      page: () => const BaseView(),
      bindings: [
        HomeViewBindings(),
        BaseViewBindings(),
        ProfileViewBinding(),
      ],
    ),
  ];
}
