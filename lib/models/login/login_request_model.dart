
import 'dart:convert';

LoginRequestModel loginRequestModelFromJson(String str) => LoginRequestModel.fromJson(json.decode(str));

String loginRequestModelToJson(LoginRequestModel data) => json.encode(data.toJson());

class LoginRequestModel {
  LoginRequestModel({
    required this.userId,
    required this.userName,
    required this.password,
    required this.otp,
  });

  int userId;
  String userName;
  String password;
  String otp;

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) => LoginRequestModel(
    userId: json["userId"],
    userName: json["userName"],
    password: json["password"],
    otp: json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "userName": userName,
    "password": password,
    "otp": otp,
  };
}