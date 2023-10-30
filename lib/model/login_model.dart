
// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  bool? isSuccess;
  int? status;
  String? message;
  Data? data;

  UserModel({
    this.isSuccess,
    this.status,
    this.message,
    this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    isSuccess: json["isSuccess"],
    status: json["status"],
    message: json["message"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "isSuccess": isSuccess,
    "status": status,
    "message": message,
    "data": data?.toJson(),
  };
}

class Data {
  String? username;
  String? accessToken;

  Data({
    this.username,
    this.accessToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    username: json["username"],
    accessToken: json["accessToken"],
  );

  Map<String, dynamic> toJson() => {
    "username": username,
    "accessToken": accessToken,
  };
}
