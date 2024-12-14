import 'package:flutter/material.dart';
import 'package:flutter_application_2/Counter/Home/homepage.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(.3)),
        useMaterial3: false,
      ),
      home: Login(),
    );
  }
}
