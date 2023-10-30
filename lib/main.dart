import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_prectice/screen/home_screen.dart';
import 'package:post_api_prectice/screen/login_screen.dart';
import 'package:post_api_prectice/screen/singup_screen.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => SignUpScreen(),
        'login':(p0) => LoginScreen(),
        'home':(p0) => HomeScreen(),
      },
    ),
  );
}
