import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_prectice/controller/home_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController txtuser = TextEditingController();
  TextEditingController txtpass = TextEditingController();
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: txtuser,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter uername"
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: txtpass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Enter password"
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(onPressed: () {
                Get.toNamed("home");
              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    ),);
  }
}
