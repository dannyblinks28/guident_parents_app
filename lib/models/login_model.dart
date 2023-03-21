

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.message,
    required this.schoolCredentials,
  });

  String message;
  SchoolCredentials schoolCredentials;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json["message"],
        schoolCredentials:
            SchoolCredentials.fromJson(json["school_credentials"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "school_credentials": schoolCredentials.toJson(),
      };
}

class SchoolCredentials {
  SchoolCredentials({
    required this.token,
    required this.parentId,
  });

  String token;
  String parentId;

  factory SchoolCredentials.fromJson(Map<String, dynamic> json) =>
      SchoolCredentials(
        token: json["token"],
        parentId: json["parentId"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "parentId": parentId,
      };
}
