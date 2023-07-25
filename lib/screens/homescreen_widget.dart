import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:self_practice/screens/homescreen_controller.dart';

Widget homeScreenView() {
  return GetBuilder<HomeScreenController>(
    id: 'getData',
      builder: (controller) {
        return controller.postsData != null
            ? ListView.builder(
                itemCount: controller.postsData!.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Text(
                    'id : ${controller.postsData![index].id}',
                  ),
                  title: Text('title : ${controller.postsData![index].title}',
                  ),
                  trailing: Text(
                     'User id : ${controller.postsData![index].userId}',
                  ),
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      });
}
