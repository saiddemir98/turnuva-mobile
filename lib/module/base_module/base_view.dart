import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:clean/configuration/constants.dart';
import 'package:clean/configuration/global_variable.dart';
import 'package:clean/module/base_module/base_view_model.dart';
import 'package:clean/module/home_module/home_view.dart';
import 'package:clean/module/profile_module/profile_view.dart';

class BaseView extends GetView<BaseViewModel> {
  const BaseView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseViewModel>(
      builder: (controller) {
        return Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 0),
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: ColorConstant.VGBLUE),
                  otherAccountsPictures: [
                    IconButton(
                        onPressed: () => controller.settingsScreen,
                        icon: const Icon(Icons.settings, color: Colors.white))
                  ],
                  currentAccountPicture: CircleAvatar(
                    radius: 100,
                    child: ClipOval(
                      child: CachedNetworkImage(
                        imageUrl: Global.globalUser?.avatar ?? "",
                        progressIndicatorBuilder: (context, url, progress) {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        },
                      ),
                    ),
                  ),
                  accountEmail: Text(Global.globalUser?.email ?? "Bilinmiyor"),
                  accountName: Text(Global.globalUser?.name ?? "Bilinmiyor"),
                ),
              ],
            ),
          ),
          appBar: AppBar(
            title: Text(controller.currentTitle),
            actions: [
              IconButton(
                onPressed: () => controller.addListItem(),
                icon: const Icon(
                  FontAwesomeIcons.comment,
                  size: 18,
                ),
              ),
              IconButton(
                onPressed: () => null,
                icon: const Icon(
                  FontAwesomeIcons.bell,
                  size: 18,
                ),
              )
            ],
          ),
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              HomeView(),
              HomeView(),
              HomeView(),
              HomeView(),
              ProfileView(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            ],
            onTap: (value) => controller.changeTabIndex(value),
          ),
        );
      },
    );
  }
}
