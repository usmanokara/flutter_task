import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:post_project_task/utils/constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppLanguage.PROFILE),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 2,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    MediaQuery.sizeOf(context).width * 0.20),
                child: CachedNetworkImage(
                  imageUrl:
                      "https://i.pinimg.com/550x/38/09/c3/3809c319d6b40a4efda99bf5500fe6ef.jpg",
                  width: MediaQuery.sizeOf(context).width * 0.40,
                ),
              ),
            ),
            const Text("Jessica",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
            const Text(AppLanguage.ABOUT,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
