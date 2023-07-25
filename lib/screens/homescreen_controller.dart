import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:self_practice/screens/home_api.dart';

import '../model/model_class.dart';

class HomeScreenController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  List<PostsApi>? postsData;

  @override
  void onInit() {
    getApi();
    super.onInit();
  }

  postApi() async {
    Map<String, dynamic>? body = {
      "name": name.text.trim(),
      "username": username.text.trim(),
      "email": email.text.trim()
    };
    HomeApi.homePagePost(body);
    Get.back();
    PostsApi? data = await HomeApi.homePagePost(body);
    if (data != null) {
      postsData!.add(data);
    }
  }

  getApi() async {
    postsData = await HomeApi.getData();
    update(['getData']);
  }
}
