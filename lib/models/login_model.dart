// To parse this JSON data, do
//
//     final loginModelDart = loginModelDartFromJson(jsonString);

import 'dart:convert';

LoginModelDart loginModelDartFromJson(String str) => LoginModelDart.fromJson(json.decode(str));

String loginModelDartToJson(LoginModelDart data) => json.encode(data.toJson());

class LoginModelDart {
    final bool status;
    final String message;
    final String token;

    LoginModelDart({
        required this.status,
        required this.message,
        required this.token,
    });

    factory LoginModelDart.fromJson(Map<String, dynamic> json) => LoginModelDart(
        status: json["status"],
        message: json["message"],
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "token": token,
    };
}