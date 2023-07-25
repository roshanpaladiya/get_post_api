import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:self_practice/screens/home_screen.dart';

main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const GetMaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}