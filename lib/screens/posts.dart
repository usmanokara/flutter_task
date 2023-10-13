import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:post_project_task/controllers/posts_controller.dart';
import 'package:post_project_task/utils/constants.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(PostController());
    return GetBuilder<PostController>(builder: (ctr) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(AppLanguage.POSTS),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 2,
        ),
        backgroundColor: Colors.white,
        body: controller.posts == null
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: controller.posts!.length,
                itemBuilder: (context, index) {
                  var post = controller.posts![index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              post.title ?? "",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w700),
                            ),
                            Text(post.body ?? ""),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.thumb_up))
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
      );
    });
  }
}
