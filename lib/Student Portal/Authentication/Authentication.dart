import 'dart:convert';
import 'package:ehs_lms/Student%20Portal/Api%20Handler/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Authentication {
  login() async {
    final url = Api().login;
    final responce = await http.post(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
          {'email': "student@student.com", 'password': "1234567890"}),
    );

    var data = jsonDecode(responce.body);
    print("Login Responce : $data");
    return data;
  }
}
