import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:post_project_task/controllers/home_controller.dart';
import 'package:post_project_task/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return GetBuilder<HomeController>(builder: (ctr) {
      return Scaffold(
        body: controller.pages[controller.currentPage.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentPage.value,
            onTap: (newIndex) => controller.updatePageIndex(newIndex),
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.post_add), label: AppLanguage.POSTS),
              BottomNavigationBarItem(
                  icon: Icon(Icons.info), label: AppLanguage.PROFILE),
            ]),
      );
    });
  }
}
