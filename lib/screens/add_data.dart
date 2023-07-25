import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:self_practice/screens/homescreen_controller.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeScreenController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 35),
            child: Column(
              children: [
                TextField(
                  controller: controller.name,
                  decoration: const InputDecoration(
                    label: Text("name"),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: controller.username,
                  decoration: const InputDecoration(
                    label: Text("username"),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: controller.email,
                  decoration: const InputDecoration(
                    label: Text("email"),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    controller.postApi();
                  },
                  child: const Text("SUBMIT"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
