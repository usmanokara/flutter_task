import 'package:get/state_manager.dart';
import 'package:post_project_task/models/post_model.dart';
import 'package:post_project_task/utils/network_utils.dart';

class PostController extends GetxController {
  RxList<PostModel>? posts;

  @override
  void onInit() {
    super.onInit();
    loadPost();
  }

  void loadPost() async {
    posts = (await NetworkUtils.getAllPosts()).obs;
  }
}
