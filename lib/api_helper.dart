import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:post_api_prectice/model/login_model.dart';

class ApiHelper {
  static ApiHelper apiHelper = ApiHelper();

  Future<UserModel> login(String? name , String? password) async {

    Map m1 ={
      "username": name,
      "password": password,
    };
    String link = "https://logintesting.p.rapidapi.com/login";
    var response = await http.post(
      Uri.parse(link),
      headers: {
        "Content-Type": "application/json",
        "X-Rapidapi-Key": "7e5b50ff69mshda93e4ea3222797p15fa55jsn7ce191ea8264",
        "X-Rapidapi-Host": "logintesting.p.rapidapi.com"
      },
      body:jsonEncode(  m1),
    );
    var json = jsonDecode(response.body);
    UserModel userModel = await  UserModel.fromJson(json);
    log("${response.body}");

    return userModel;

  }
}
