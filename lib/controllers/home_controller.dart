import 'package:get/state_manager.dart';
import 'package:post_project_task/screens/posts.dart';
import 'package:post_project_task/screens/profile.dart';

class HomeController extends GetxController {
  var pages = [const PostsScreen(), const ProfileScreen()];
  var currentPage = 0.obs;

  updatePageIndex(int newIndex) {
    currentPage.value = newIndex;
    update();
  }
}
