import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:self_practice/screens/add_data.dart';
import 'package:self_practice/screens/homescreen_controller.dart';
import 'package:self_practice/screens/homescreen_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => const AddData());
        },
        child: const Icon(Icons.add),
      ),
      body: homeScreenView(),
    );
  }
}
