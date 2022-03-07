import 'dart:convert';

class SignupModel {
  final String email;
  final String password;
  final String mobileNo;

  const SignupModel({required this.password, required this.email, required this.mobileNo});

  factory SignupModel.fromJson(Map<String, dynamic> json) {
    return SignupModel(
      email: json['email'],
      password : json['password'],
      mobileNo: json['mobileNo']
    );
  }
}