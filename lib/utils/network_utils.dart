import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_project_task/models/post_model.dart';

class NetworkUtils {
  static String BASE_URL = "https://jsonplaceholder.typicode.com";
  static Future<List<PostModel>> getAllPosts() async {
    var response = await http.get(
      Uri.parse("$BASE_URL/posts"),
    );
    List<dynamic> responseBodyMapList = jsonDecode(response.body);
    return responseBodyMapList.map((e) => PostModel.fromJson(e)).toList();
  }
}
