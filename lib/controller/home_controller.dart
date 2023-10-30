
import 'package:get/get.dart';
import 'package:post_api_prectice/api_helper.dart';
import 'package:post_api_prectice/model/login_model.dart';

class HomeController
{

  Rxn<UserModel> userModel = Rxn<UserModel>();

  Future<void> goLogin(String? name ,String? password)
  async {
      userModel.value = await ApiHelper.apiHelper.login(name, password);
      print("==============${userModel.value}");
  }
}