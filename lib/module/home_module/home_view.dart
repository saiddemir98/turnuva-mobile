import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:clean/provider/list_provider.dart';
import 'package:clean/module/home_module/home_view_model.dart';

class HomeView extends GetView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListProvider>(
      builder: (controller) {
        return ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index) {
            String item = controller.list[index];
            return ListTile(
              title: Text(item),
            );
          },
        );
      },
    );
  }
}
