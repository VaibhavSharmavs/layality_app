
import 'dart:convert';

LoginResponseModel loginResponseModelFromJson(String str) => LoginResponseModel.fromJson(json.decode(str));

String loginResponseModelToJson(LoginResponseModel data) => json.encode(data.toJson());

class LoginResponseModel {
  LoginResponseModel({
    this.data,
    this.message,
    this.filter,
  });

  Data? data;
  Message? message;
  dynamic filter;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) => LoginResponseModel(
    data: Data.fromJson(json["data"]),
    message: Message.fromJson(json["message"]),
    filter: json["filter"],
  );

  Map<String, dynamic> toJson() => {
    "data": data!.toJson(),
    "message": message!.toJson(),
    "filter": filter,
  };
}

class Data {
  Data({
    this.userId,
    this.userName,
    this.token,
    this.expiresOn,
    this.displayName,
    this.firstName,
    this.middleName,
    this.lastName,
    this.fullName,
    this.profileImage,
    this.isLogedIn,
    this.userType,
    this.isResetPassword,
    this.loyaltyCustomerId,
  });

  int? userId;
  String? userName;
  String? token;
  Map<String, double>? expiresOn;
  String? displayName;
  String? firstName;
  dynamic middleName;
  String? lastName;
  dynamic fullName;
  dynamic profileImage;
  dynamic isLogedIn;
  int? userType;
  bool? isResetPassword;
  int? loyaltyCustomerId;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userId: json["userId"],
    userName: json["userName"],
    token: json["token"],
    expiresOn: Map.from(json["expiresOn"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
    displayName: json["displayName"],
    firstName: json["firstName"],
    middleName: json["middleName"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    profileImage: json["profileImage"],
    isLogedIn: json["isLogedIn"],
    userType: json["userType"],
    isResetPassword: json["isResetPassword"],
    loyaltyCustomerId: json["loyaltyCustomerId"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "userName": userName,
    "token": token,
    "expiresOn": Map.from(expiresOn!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "displayName": displayName,
    "firstName": firstName,
    "middleName": middleName,
    "lastName": lastName,
    "fullName": fullName,
    "profileImage": profileImage,
    "isLogedIn": isLogedIn,
    "userType": userType,
    "isResetPassword": isResetPassword,
    "loyaltyCustomerId": loyaltyCustomerId,
  };
}

class Message {
  Message({
    this.statusCode,
    this.code,
    this.description,
    this.type,
    this.errors,
  });

  dynamic statusCode;
  int? code;
  dynamic description;
  String? type;
  dynamic errors;

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    statusCode: json["statusCode"],
    code: json["code"],
    description: json["description"],
    type: json["type"],
    errors: json["errors"],
  );

  Map<String, dynamic> toJson() => {
    "statusCode": statusCode,
    "code": code,
    "description": description,
    "type": type,
    "errors": errors,
  };
}
