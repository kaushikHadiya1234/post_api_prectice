import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_api_prectice/api_helper.dart';
import 'package:post_api_prectice/model/login_model.dart';

import '../controller/home_controller.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtuser = TextEditingController();
  TextEditingController txtpass = TextEditingController();
  HomeController controller = Get.put(HomeController());


  @override
  void initState() {
    super.initState();
  }
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
               controller.goLogin(txtuser.text, txtpass.text);
               if(controller.userModel.value!.status == 202)
               {
                 Get.toNamed("home");
               }
               else
               {
                 Get.snackbar("Failed", 'wrong Email and Password',margin: EdgeInsets.all(10));
               }
              }, child: Text("signUp"))
            ],
          ),
        ),
      ),
    ),);
  }
}
