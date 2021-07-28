import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:ehs_lms/Screens/Authentications/selectRole.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => SelectRole(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              radius: 0.9,
              colors: [
                Color(0xffffffff),
                Color(0xff6EB7C6),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height * .4,
              ),
              AutoSizeText(
                "Learning Management System",
                style: TextStyle(
                  color: Color(0xff14514D),
                  fontSize: 15.0,
                ),
                maxLines: 1,
              ),
            ],
          )),
    );
  }
}
