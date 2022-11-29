import 'package:get/get.dart';
import 'package:clean/controller/list_provider.dart';
import 'package:clean/router/routers.dart';

class BaseViewModel extends GetxController {
  int tabIndex = 0;

  String get currentTitle {
    switch (tabIndex) {
      case 0:
        return "Vizyoner Genç";
      case 1:
        return "Vizyoner Genç";
      case 2:
        return "Vizyoner Genç";
      case 3:
        return "Vizyoner Genç";
      case 4:
        return "Profile";
      default:
        return "Vizyoner Genç";
    }
  }

  void get settingsScreen {
    Get.toNamed(Routes.SETTING);
  }

  void changeTabIndex(int value) {
    tabIndex = value;
    update();
  }

  void addListItem() {
    Get.find<ListProvider>().addList("item");
  }
}
