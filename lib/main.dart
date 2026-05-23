import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:my_bookly_main/constants.dart';
import 'package:my_bookly_main/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        fontFamily: 'SF Pro Display',
      ),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
