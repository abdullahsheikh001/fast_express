import 'package:fast_express/Screens/SplashScreens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const fast_delivery());
}

// ignore: camel_case_types
class fast_delivery extends StatelessWidget {
  const fast_delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const Splashscreens(),
    );
  }
}
