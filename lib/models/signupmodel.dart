import 'dart:convert';

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));

String signupModelToJson(SignupModel data) => json.encode(data.toJson());

class SignupModel {
    SignupModel({
        required this.name,
        required this.phoneno,
        required this.email,
        required this.password,
        required this.id,
        required this.createdAt,
    });

    String name;
    String phoneno;
    String email;
    String password;
    String id;
    DateTime createdAt;

    factory SignupModel.fromJson(Map<String, dynamic> json) => SignupModel(
        name: json["name"],
        phoneno: json["phoneno"],
        email: json["email"],
        password: json["password"],
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "phoneno": phoneno,
        "email": email,
        "password": password,
        "id": id,
        "createdAt": createdAt.toIso8601String(),
    };
}